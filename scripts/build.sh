#!/usr/bin/env bash
# Build HTML + PDF for every markdown file in the repo and assemble _site/
set -euo pipefail

SITE=_site
mkdir -p "$SITE/resume" "$SITE/projects" "$SITE/worklog" "$SITE/assets"
cp -r assets/* "$SITE/assets/" 2>/dev/null || true

# Pandoc defaults
PANDOC_HTML_OPTS=(--standalone --from=gfm --to=html5 --css=/My-Portfolio/assets/style.css --metadata=lang:en)
PANDOC_PDF_OPTS=(--from=gfm --to=html5 --css=assets/style.css --metadata=lang:en)

# ---- Convert one markdown file to HTML + PDF ----
convert_one() {
  local src="$1"           # e.g. resume/resume.md
  local out_dir="$2"       # e.g. _site/resume
  local base
  base=$(basename "$src" .md)
  local title
  title=$(head -n1 "$src" | sed 's/^#\s*//')

  echo "  → $src"
  pandoc "$src" "${PANDOC_HTML_OPTS[@]}" --metadata=title:"$title" -o "$out_dir/${base}.html"

  # PDF with WeasyPrint (uses the same CSS so HTML + PDF look identical)
  pandoc "$src" "${PANDOC_PDF_OPTS[@]}" --metadata=title:"$title" -o "/tmp/${base}.html"
  weasyprint "/tmp/${base}.html" "$out_dir/${base}.pdf" \
    --stylesheet assets/style.css || echo "    (pdf step skipped if weasyprint failed)"
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

# Landing page (index.md -> index.html at site root)
echo "== Landing =="
if [ -f index.md ]; then
  convert_one index.md "$SITE"
fi

# If the user kept the hand-written index.html, prefer that over the generated one
if [ -f index.html ]; then
  cp index.html "$SITE/index.html"
fi

echo "Site built in $SITE/"
ls -la "$SITE"
