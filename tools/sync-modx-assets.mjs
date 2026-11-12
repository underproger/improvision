// Copy the built front-end (CSS, JS, fonts, icons, images) into the MODX site:
//   ../improvision-modx/site/assets/  (separate repo checked out next to this one)
//   modx/site/assets/                 (copy inside this repo, if present)
import { cpSync, existsSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const targets = [join(root, '..', 'improvision-modx', 'site', 'assets'), join(root, 'modx', 'site', 'assets')].filter(existsSync);
if (!targets.length) {
  console.error('MODX site not found: expected ../improvision-modx/site/assets or modx/site/assets');
  process.exit(1);
}
for (const target of targets) {
  for (const dir of ['css', 'js', 'fonts', 'icons', 'img']) {
    cpSync(join(root, 'assets', dir), join(target, dir), { recursive: true });
  }
  console.log('assets →', target);
}
