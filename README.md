# My-Portfolio

**Elayarasan Ramalingam — Senior IIoT Solutions Architect**

Living resume + project work-log, auto-published to GitHub Pages as HTML and PDF.

🌐 **Live site:** https://ea000123.github.io/My-Portfolio/

## What's in this repo

- `resume/resume.md` — single source of truth for my resume (edit here; HTML + PDF are built from this)
- `projects/*.md` — one case study per signature project
- `worklog/YYYY-MM-DD-*.md` — chronological updates (every HyperGrid snapshot or milestone)
- `assets/style.css` — shared stylesheet for HTML + PDF
- `.github/workflows/build.yml` — auto-build + publish on every push
- `scripts/build.sh` — the actual build script (pandoc + weasyprint)

## How updates flow

1. Edit the relevant markdown file
2. Commit + push to `main`
3. GitHub Actions builds HTML + PDF for every markdown
4. GitHub Pages publishes to the live URL within ~2 minutes

No manual format conversion. No stale resume. One source, three outputs (HTML on site, PDF download, markdown for GitHub readers).

## Contact

elayarasanram90@gmail.com · Hyderabad, India · +91 6379916120
