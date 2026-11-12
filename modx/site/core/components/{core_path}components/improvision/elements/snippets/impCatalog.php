<?php
/**
 * impCatalog — paginated list of child resources (projects, blog posts). Call uncached:
 *   [[!impCatalog? &parent=`5` &tpl=`card_project` &limit=`9` &type=`projects`]]
 * Sets placeholders: [[!+imp.items]] (cards), [[!+imp.pagination]] (nav), [[!+imp.count]] ("Показано: 1–9 з 12").
 * Page number comes from ?page=N; a page past the end gives 404.
 *
 * @var modX $modx
 * @var array $scriptProperties
 */
use MODX\Revolution\modResource;

$modx->lexicon->load('improvision:default');
$parent = (int)($scriptProperties['parent'] ?? $modx->resource->get('id'));
$tpl = $scriptProperties['tpl'] ?? 'card_project';
$limit = max(1, (int)($scriptProperties['limit'] ?? 9));
$type = $scriptProperties['type'] ?? 'projects';
$sortby = $scriptProperties['sortby'] ?? ($type === 'posts' ? 'publishedon' : 'menuindex');
$sortdir = $scriptProperties['sortdir'] ?? ($type === 'posts' ? 'DESC' : 'ASC');
$includeTVs = $scriptProperties['includeTVs'] ?? ($type === 'posts'
    ? 'image,card_image,post_category,featured_text'
    : 'brand,city,year,category,card_image,card_image_alt');

$where = ['parent' => $parent, 'published' => 1, 'deleted' => 0];
$total = $modx->getCount(modResource::class, $where);
$pages = max(1, (int)ceil($total / $limit));
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
if ($page < 1 || $page > $pages || (isset($_GET['page']) && (string)$page !== (string)$_GET['page'])) {
    $modx->sendErrorPage();
}

/** @var \ModxPro\PdoTools\Fetch $pdo */
$pdo = $modx->services->get('pdofetch');
$rows = $pdo->getCollection(modResource::class, $where, [
    'sortby' => $sortby,
    'sortdir' => $sortdir,
    'limit' => $limit,
    'offset' => ($page - 1) * $limit,
    'includeTVs' => $includeTVs,
    'tvPrefix' => '',
]);
$items = [];
foreach ($rows as $row) {
    $items[] = $pdo->getChunk($tpl, ['p' => $row]);
}

// pagination (same markup as the static mockup)
$nav = '';
if ($pages > 1) {
    $url = $modx->makeUrl($modx->resource->get('id'), '', '', 'abs');
    $link = function ($n) use ($url) {
        return $n > 1 ? $url . '?page=' . $n : $url;
    };
    $icon = function ($name) use ($pdo) {
        return $pdo->getChunk('icon_' . $name);
    };
    $label = $modx->lexicon($type === 'posts' ? 'imp.pagination_posts' : 'imp.pagination_projects');
    $nav .= '      <nav class="pagination" aria-label="' . htmlspecialchars($label) . '">' . "\n";
    $nav .= $page > 1
        ? '        <a class="pagination__item pagination__item--arrow" href="' . $link($page - 1) . '" aria-label="' . $modx->lexicon('imp.prev_page') . '">' . $icon('arrow-left') . "</a>\n"
        : '        <span class="pagination__item pagination__item--arrow is-disabled" aria-hidden="true">' . $icon('arrow-left') . "</span>\n";
    for ($n = 1; $n <= $pages; $n++) {
        $nav .= $n === $page
            ? '        <a class="pagination__item is-active" href="' . $link($n) . '" aria-current="page">' . $n . "</a>\n"
            : '        <a class="pagination__item" href="' . $link($n) . '">' . $n . "</a>\n";
    }
    $nav .= $page < $pages
        ? '        <a class="pagination__item pagination__item--arrow" href="' . $link($page + 1) . '" aria-label="' . $modx->lexicon('imp.next_page') . '">' . $icon('arrow-right') . "</a>\n"
        : '        <span class="pagination__item pagination__item--arrow is-disabled" aria-hidden="true">' . $icon('arrow-right') . "</span>\n";
    $nav .= "      </nav>";
}

$from = $total ? ($page - 1) * $limit + 1 : 0;
$to = min($total, $page * $limit);
$modx->setPlaceholders([
    'items' => implode("\n", $items),
    'pagination' => $nav,
    'count' => $modx->lexicon('imp.shown_range', ['from' => $from, 'to' => $to, 'total' => $total]),
    'page' => $page,
    'pages' => $pages,
], 'imp.');
return '';