# Deploy Instructions — one-time setup

**Follow these steps once. After that, every future update is a 60-second commit-and-push.**

---

## Prerequisites (install once)

1. **Git for Windows** — https://git-scm.com/download/win (accept all defaults)
2. **GitHub Desktop** — https://desktop.github.com/ (sign in with your `EA000123` account)

---

## Step 1 — Clone your repo locally

In GitHub Desktop:

1. **File → Clone repository → URL** (or GitHub.com tab)
2. Paste: `https://github.com/EA000123/My-Portfolio` and pick a local folder, e.g. `C:\Users\helpdesk\Documents\GitHub\My-Portfolio`
3. Click **Clone**

You now have a local copy at `C:\Users\helpdesk\Documents\GitHub\My-Portfolio\`.

---

## Step 2 — Copy the scaffold into it

1. Open **two** File Explorer windows side by side:
   - Window A: `C:\Users\helpdesk\Documents\Claude\Projects\Senior IOT solution Architect\My-Portfolio-scaffold\`  ← source
   - Window B: `C:\Users\helpdesk\Documents\GitHub\My-Portfolio\`  ← destination
2. In Window A, select **ALL** files and folders (`Ctrl+A`)
3. Drag them into Window B.
4. When Windows asks about `README.md` — **click "Replace the file in the destination"**.
5. If you want to keep the existing `index.html` from your current site, leave it. The build script will prefer your hand-written `index.html` over the generated one. If you want the new auto-generated landing page instead, delete the old `index.html` before copying.

---

## Step 3 — Enable the right Pages source

On GitHub.com → your `My-Portfolio` repo → **Settings → Pages** (left sidebar):

- **Build and deployment → Source:** change to **"GitHub Actions"**
- Save.

(If it already says GitHub Actions, you're done with this step.)

---

## Step 4 — Commit and push

Open GitHub Desktop. It will show all the new files on the left as changes to commit.

1. In the "Summary" field at the bottom-left, type: **`Initial resume + project case studies + build automation`**
2. Click **Commit to main**.
3. Click **Push origin** (top-right).

That triggers the build.

---

## Step 5 — Watch it build (~2 minutes)

On GitHub.com → your `My-Portfolio` repo → **Actions** tab.

You'll see a workflow run named "Build & Deploy Portfolio" start. Click into it to watch the logs. Steps:
- Checkout
- Install Pandoc + WeasyPrint
- Build site
- Upload Pages artifact
- Deploy to GitHub Pages

When the green ✓ appears next to "deploy", open:

**https://ea000123.github.io/My-Portfolio/**

You should see the landing page with links to the resume (HTML + PDF) and every project case study.

---

## Day-to-day workflow after setup

Whenever we update the portfolio here in Cowork:

1. **In this chat, tell me:** *"Update resume — HL Mando now has 3 machines live"* (or similar)
2. **I regenerate** the relevant .md files in `C:\Users\helpdesk\Documents\Claude\Projects\Senior IOT solution Architect\My-Portfolio-scaffold\`
3. **You copy the updated files** into `C:\Users\helpdesk\Documents\GitHub\My-Portfolio\` (same drag-and-drop as Step 2)
4. **In GitHub Desktop:** write the commit message I give you → **Commit to main → Push origin**
5. **Within 2 minutes** the live URL updates with the new HTML + PDF.

No manual format conversion needed. One source → three outputs.

---

## If something fails on the first build

Most common issues:

**Build fails at "Install WeasyPrint"** — rare but can happen on Ubuntu runner upgrades. Tell me the error from the Actions log and I'll fix the workflow.

**404 at the live URL** — wait another minute; GitHub Pages can lag. Then hard-refresh (Ctrl+F5).

**Pages still showing old `index.html`** — the build script keeps your hand-written `index.html` by default. Delete `index.html` from the repo root (via GitHub Desktop, commit, push) and the auto-generated one will take over.

**The .docx version** — I keep producing that here in Cowork on request. GitHub automates the HTML + PDF; .docx stays a Cowork artefact for the Naukri upload form.

---

## Pro-tips

- **Add the live URL to Naukri's "Online Profile" field** immediately after Step 5 succeeds.
- **Add it to your LinkedIn Websites section** too.
- **Pin the repo** on your GitHub profile (profile page → ⚙ next to Pinned → pick `My-Portfolio`).
- **Add a GitHub badge to your email signature:** `View my IIoT portfolio: https://ea000123.github.io/My-Portfolio/`.
