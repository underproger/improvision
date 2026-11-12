<?php
/**
 * impLead — handler for the lead forms (contact block, contacts page, modal).
 * The forms post (fetch + FormData) to the "Заявка" resource, whose template calls [[!impLead]].
 * Sends an e-mail to the addresses in the system setting improvision.lead_email (comma separated)
 * and keeps a copy in core/export/improvision-leads/YYYY-MM.log.
 * Answers JSON; HTTP 4xx/5xx makes the form show its error message.
 *
 * @var modX $modx
 */
use MODX\Revolution\Mail\modMail;
use MODX\Revolution\Mail\modPHPMailer;

$respond = function (int $code, array $data) {
    http_response_code($code);
    header('Content-Type: application/json; charset=utf-8');
    header('Cache-Control: no-store');
    return json_encode($data, JSON_UNESCAPED_UNICODE);
};

if (($_SERVER['REQUEST_METHOD'] ?? '') !== 'POST') {
    header('Allow: POST');
    return $respond(405, ['success' => false, 'message' => 'Method not allowed']);
}

$clean = function ($key, $max = 500) {
    $value = isset($_POST[$key]) ? (string)$_POST[$key] : '';
    $value = trim(strip_tags($value));
    return mb_substr(preg_replace('/[\x00-\x08\x0B\x0C\x0E-\x1F]/u', '', $value), 0, $max);
};

// bots fill the hidden "website" field — pretend success
if ($clean('website') !== '') {
    return $respond(200, ['success' => true]);
}

$data = [
    'name' => $clean('name', 120),
    'phone' => $clean('phone', 40),
    'email' => $clean('email', 120),
    'service' => $clean('service', 200),
    'message' => $clean('message', 3000),
    'page' => $clean('page', 300),
    'lang' => $clean('lang', 5),
];
$errors = [];
if ($data['name'] === '') {
    $errors[] = 'name';
}
if (strlen(preg_replace('/\D/', '', $data['phone'])) < 10) {
    $errors[] = 'phone';
}
if ($data['email'] !== '' && !filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
    $errors[] = 'email';
}
if ($errors) {
    return $respond(422, ['success' => false, 'errors' => $errors]);
}

// simple flood protection: one request per 10 seconds per session
$now = time();
if (!empty($_SESSION['imp_lead_time']) && $now - (int)$_SESSION['imp_lead_time'] < 10) {
    return $respond(429, ['success' => false, 'message' => 'Too many requests']);
}
$_SESSION['imp_lead_time'] = $now;

$labels = [
    'name' => "Ім'я", 'phone' => 'Телефон', 'email' => 'Email', 'service' => 'Послуга',
    'message' => 'Повідомлення', 'page' => 'Сторінка', 'lang' => 'Мова',
];
$rows = '';
$text = '';
foreach ($labels as $key => $label) {
    if ($data[$key] === '') {
        continue;
    }
    $value = htmlspecialchars($data[$key], ENT_QUOTES, 'UTF-8');
    $rows .= '<tr><td style="padding:4px 12px 4px 0;color:#8a919c;vertical-align:top">' . $label . '</td><td style="padding:4px 0">' . nl2br($value) . '</td></tr>';
    $text .= $label . ': ' . $data[$key] . "\n";
}

// keep a copy of every lead
$dir = MODX_CORE_PATH . 'export/improvision-leads/';
if (is_dir($dir) || @mkdir($dir, 0750, true)) {
    @file_put_contents($dir . date('Y-m') . '.log', '[' . date('Y-m-d H:i:s') . "]\n" . $text . "\n", FILE_APPEND | LOCK_EX);
}

$recipients = array_filter(array_map('trim', explode(',', (string)$modx->getOption('improvision.lead_email', null, $modx->getOption('emailsender')))));
/** @var modMail $mail */
$mail = $modx->getService('mail', modPHPMailer::class);
$mail->set(modMail::MAIL_BODY, '<h2 style="font-family:Arial,sans-serif">Нова заявка з сайту</h2><table style="font-family:Arial,sans-serif;font-size:14px">' . $rows . '</table>');
$mail->set(modMail::MAIL_BODY_TEXT, $text);
$mail->set(modMail::MAIL_FROM, $modx->getOption('emailsender'));
$mail->set(modMail::MAIL_FROM_NAME, $modx->getOption('site_name'));
$mail->set(modMail::MAIL_SUBJECT, 'Заявка з сайту improvision: ' . $data['name']);
foreach ($recipients as $to) {
    $mail->address('to', $to);
}
if ($data['email'] !== '') {
    $mail->address('reply-to', $data['email'], $data['name']);
}
$mail->setHTML(true);
$sent = $recipients ? $mail->send() : false;
if (!$sent) {
    $modx->log(modX::LOG_LEVEL_ERROR, '[impLead] Could not send lead e-mail: ' . $mail->mailer->ErrorInfo);
}
$mail->reset();

return $sent
    ? $respond(200, ['success' => true])
    : $respond(500, ['success' => false, 'message' => 'Mail error']);