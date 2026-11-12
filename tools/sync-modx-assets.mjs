// Copy the built front-end (CSS, JS, fonts, icons, images) into the MODX site —
// the improvision-modx repository checked out next to this one: ../improvision-modx/assets/
import { cpSync, existsSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const target = join(root, '..', 'improvision-modx', 'assets');
if (!existsSync(target)) {
  console.error('MODX site not found: clone underproger/improvision-modx next to this repository');
  process.exit(1);
}
for (const dir of ['css', 'js', 'fonts', 'icons', 'img']) {
  cpSync(join(root, 'assets', dir), join(target, dir), { recursive: true });
}
console.log('assets →', target);
