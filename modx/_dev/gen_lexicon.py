import os
HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.abspath(os.path.join(HERE, '..', '..')) + '/'
SITE = os.path.join(HERE, '..', 'site') + '/'
import json, re, sys
sys.path.insert(0, HERE)
from lexicon_src import UA, MANUAL
norm = lambda s: re.sub(r'\s+', ' ', s).strip()
dicts = {l: {norm(k): v for k, v in json.load(open(os.path.join(REPO, 'src', 'i18n', l + '.json'))).items()} for l in ('en', 'ru')}
base = SITE + 'core/components/improvision/lexicon/'
def php(s): return "'" + s.replace('\\', '\\\\').replace("'", "\\'") + "'"
for lang in ('uk', 'en', 'ru'):
    lines = ['<?php', '/**', ' * improvision — interface strings (' + lang + ').', ' * Edit in the manager: Налаштування → Словники, namespace "improvision", topic "default".', ' */']
    for k, v in UA.items():
        if lang == 'uk':
            val = v
        else:
            val = MANUAL[lang].get(k) or dicts[lang].get(norm(v), v)
        lines.append(f"$_lang['imp.{k}'] = {php(val)};")
    open(base + lang + '/default.inc.php', 'w').write('\n'.join(lines) + '\n')
print('ok')
