// Copy the built front-end (CSS, JS, fonts, icons, images) into the MODX site: modx/site/assets/
import { cpSync, existsSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const target = join(root, 'modx', 'site', 'assets');
if (!existsSync(target)) {
  console.error('modx/site/assets not found');
  process.exit(1);
}
for (const dir of ['css', 'js', 'fonts', 'icons', 'img']) {
  cpSync(join(root, 'assets', dir), join(target, dir), { recursive: true });
}
console.log('assets → modx/site/assets');
