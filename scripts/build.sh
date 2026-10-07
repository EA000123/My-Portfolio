#!/usr/bin/env bash
# Build HTML + PDF for every markdown file; assemble _site/.
# Fails loudly so missing outputs show in the Actions log.
set -euo pipefail

SITE=_site
mkdir -p "$SITE/resume" "$SITE/projects" "$SITE/worklog" "$SITE/assets"
cp -r assets/* "$SITE/assets/" 2>/dev/null || true

# ---- Convert one markdown file to HTML + PDF ----
convert_one() {
  local src="$1"           # e.g. resume/resume.md
  local out_dir="$2"       # e.g. _site/resume
  local base
  base=$(basename "$src" .md)
  local title
  title=$(head -n1 "$src" | sed 's/^#\s*//')

  echo "  → $src"

  # HTML with CSS embedded (works regardless of serve path)
  pandoc "$src" \
    --from=gfm --to=html5 --standalone \
    --metadata=title:"$title" \
    --metadata=lang:en \
    --css=assets/style.css --embed-resources \
    -o "$out_dir/${base}.html"

  # PDF via pandoc + weasyprint (one-shot — pandoc orchestrates)
  pandoc "$src" \
    --from=gfm --to=html5 \
    --metadata=title:"$title" \
    --metadata=lang:en \
    --css=assets/style.css \
    --pdf-engine=weasyprint \
    -o "$out_dir/${base}.pdf"
}

echo "== Resume =="
if [ -f resume/resume.md ]; then convert_one resume/resume.md "$SITE/resume"; fi

echo "== Projects =="
for f in projects/*.md; do
  [ -e "$f" ] || continue
  convert_one "$f" "$SITE/projects"
done

echo "== Worklog =="
for f in worklog/*.md; do
  [ -e "$f" ] || continue
  convert_one "$f" "$SITE/worklog"
done

echo "== Landing =="
if [ -f index.md ]; then
  convert_one index.md "$SITE"
fi

# If the user kept a hand-written index.html at the root, prefer it
if [ -f index.html ]; then
  cp index.html "$SITE/index.html"
fi

echo
echo "Site built in $SITE/ — contents:"
find "$SITE" -maxdepth 2 -type f | sort
