#!/usr/bin/env bash
# Xiaoba Animated Pet for Codex / Codex 小八动态宠物
# Install the two pet files. Keep any previous Xiaoba installation as a backup.
set -eu

package_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
for pet_file in pet.json spritesheet.webp; do
  if [ ! -s "$package_dir/$pet_file" ]; then
    printf 'Missing package file: %s\n' "$pet_file" >&2
    exit 1
  fi
done

codex_dir="${CODEX_HOME:-$HOME/.codex}"
mkdir -p -- "$codex_dir/pets"
codex_dir="$(cd -- "$codex_dir" && pwd)"
pet_target="$codex_dir/pets/xiaoba"
pet_stage="$(mktemp -d "$codex_dir/pets/.xiaoba-install.XXXXXX")"
trap 'rm -rf -- "$pet_stage"' EXIT

cp -- "$package_dir/pet.json" "$package_dir/spritesheet.webp" "$pet_stage/"
chmod 755 "$pet_stage"
chmod 644 "$pet_stage/pet.json" "$pet_stage/spritesheet.webp"

pet_backup=""
if [ -e "$pet_target" ] || [ -L "$pet_target" ]; then
  mkdir -p -- "$codex_dir/pet-backups"
  pet_backup="$codex_dir/pet-backups/xiaoba-$(date +%Y%m%d-%H%M%S)-$$"
  mv -- "$pet_target" "$pet_backup"
fi

if ! mv -- "$pet_stage" "$pet_target"; then
  if [ -n "$pet_backup" ]; then
    mv -- "$pet_backup" "$pet_target"
  fi
  printf 'Installation failed. Any previous installation was restored.\n' >&2
  exit 1
fi

printf 'Installed Xiaoba / 小八安装完成: %s\n' "$pet_target"
if [ -n "$pet_backup" ]; then
  printf 'Previous version backup / 旧版本备份: %s\n' "$pet_backup"
fi
printf 'In Codex: Settings → Pets → Refresh → Xiaoba. Use Show pet or /pet to show it.\n'
printf '在 Codex 的 Settings → Pets 中点击 Refresh 并选择 Xiaoba，再使用 Show pet 显示它。\n'
