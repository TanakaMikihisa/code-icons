#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ASSETS_DIR="${SCRIPT_DIR}/assets"
REF_IMAGE="${ASSETS_DIR}/venv-sm.png"

usage() {
  cat <<'EOF'
Usage: pad-assets.sh

1. Scan assets/*.png (files without "-sm" in the name)
2. Convert each to a padded "{name}-sm.png"
3. Remove the source PNG files
4. Update icon paths in themes/file-icon-theme.json, README*.md, package.json

Reference size and margin are derived from assets/venv-sm.png.
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -gt 0 ]]; then
  echo "Unknown option: $1" >&2
  usage >&2
  exit 1
fi

if [[ ! -f "$REF_IMAGE" ]]; then
  echo "Reference image not found: $REF_IMAGE" >&2
  exit 1
fi

python3 - "$SCRIPT_DIR" "$ASSETS_DIR" "$REF_IMAGE" <<'PY'
import json
import sys
from pathlib import Path

from PIL import Image

root_dir = Path(sys.argv[1])
assets_dir = Path(sys.argv[2])
ref_image = Path(sys.argv[3])

REF_FILES = [
    root_dir / "themes" / "file-icon-theme.json",
    root_dir / "README.md",
    root_dir / "README-JP.md",
    root_dir / "README-CH.md",
    root_dir / "package.json",
]


def content_bbox(image: Image.Image) -> tuple[int, int, int, int] | None:
    return image.getchannel("A").getbbox()


def margins_from_bbox(
    width: int, height: int, bbox: tuple[int, int, int, int]
) -> tuple[int, int, int, int]:
    left, top, right, bottom = bbox
    return top, height - bottom, left, width - right


def load_rgba(path: Path) -> Image.Image:
    return Image.open(path).convert("RGBA")


def sm_output_name(source_name: str) -> str:
    return f"{Path(source_name).stem}-sm.png"


def build_sm_mapping(directory: Path) -> dict[str, str]:
    mapping: dict[str, str] = {}
    for sm_path in sorted(directory.glob("*-sm.png")):
        base_name = sm_path.name[: -len("-sm.png")] + ".png"
        mapping[base_name] = sm_path.name
    return mapping


def update_references(mapping: dict[str, str]) -> list[str]:
    updated_files: list[str] = []

    for ref_file in REF_FILES:
        if not ref_file.exists():
            continue

        original = ref_file.read_text(encoding="utf-8")
        updated = original

        for base_name, sm_name in sorted(
            mapping.items(), key=lambda item: len(item[0]), reverse=True
        ):
            updated = updated.replace(f"../assets/{base_name}", f"../assets/{sm_name}")
            updated = updated.replace(f"assets/{base_name}", f"assets/{sm_name}")

        if updated == original:
            continue

        ref_file.write_text(updated, encoding="utf-8")
        updated_files.append(str(ref_file.relative_to(root_dir)))

        if ref_file.suffix == ".json":
            json.loads(updated)

    return updated_files


ref = load_rgba(ref_image)
ref_w, ref_h = ref.size
ref_bbox = content_bbox(ref)
if ref_bbox is None:
    raise SystemExit(f"No visible content in reference image: {ref_image}")

ref_margins = margins_from_bbox(ref_w, ref_h, ref_bbox)
margin = min(ref_margins)
content_w = ref_w - margin * 2
content_h = ref_h - margin * 2

print("== 1. Scan ==")
print(f"assets/*.png without '-sm'")
print()

targets = sorted(
    path for path in assets_dir.glob("*.png") if "-sm" not in path.stem
)

if not targets:
    print("No source PNG files found.")
    sys.exit(0)

for path in targets:
    print(f"  - {path.name}")

print()
print(f"Reference: {ref_image.name}")
print(f"  canvas     : {ref_w}x{ref_h}")
print(f"  min margin : {margin}px")
print(f"  content box: {content_w}x{content_h}")
print()

print("== 2. Convert ==")
generated = 0
removed: list[str] = []

for path in targets:
    image = load_rgba(path)
    bbox = content_bbox(image)
    if bbox is None:
        print(f"skip (empty): {path.name}")
        continue

    content = image.crop(bbox)
    scale = min(content_w / content.width, content_h / content.height)
    new_size = (
        max(1, round(content.width * scale)),
        max(1, round(content.height * scale)),
    )
    resized = content.resize(new_size, Image.Resampling.LANCZOS)

    canvas = Image.new("RGBA", (ref_w, ref_h), (0, 0, 0, 0))
    offset = ((ref_w - new_size[0]) // 2, (ref_h - new_size[1]) // 2)
    canvas.paste(resized, offset, resized)

    output_path = assets_dir / sm_output_name(path.name)
    canvas.save(output_path)
    path.unlink()
    generated += 1
    removed.append(path.name)

    print(
        f"  {path.name} -> {output_path.name} "
        f"({image.size[0]}x{image.size[1]} -> {ref_w}x{ref_h})"
    )

print()
print(f"Converted {generated} file(s).")
print()

if removed:
    print("== 3. Remove sources ==")
    for name in removed:
        print(f"  - {name}")
    print()

print("== 4. Update code ==")
sm_mapping = build_sm_mapping(assets_dir)
updated_files = update_references(sm_mapping)

if updated_files:
    for name in updated_files:
        print(f"  - {name}")
else:
    print("  (no changes)")

print()
print("Done.")
PY
