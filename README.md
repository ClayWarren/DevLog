# devlog 🗒️  
Generate a **daily changelog** from your Git commit history — automatically grouped by date and written to `DEVLOG.md`.  

## Features
- 📅 Groups commits by day  
- 📝 Outputs clean, shareable Markdown  
- ⚡ Runs instantly via CLI (`npx devlog`)  
- 💻 Zero configuration — works in any Git repo  

---

## Installation

### Option 1 — Local Dev
```bash
git clone https://github.com/yourusername/devlog.git
cd devlog
npm install
npm run build

## ✨ Features
✅ **Zero setup** — runs instantly  
✅ Tracks **today’s git commits** from all local repos  
✅ Logs recent **terminal commands**  
✅ Saves everything to a **Markdown file** (`~/DevLogs/devlog_YYYY-MM-DD.md`)  
✅ Works offline (AI summaries optional in future versions)  

---

Option 2 — Global Install
bash
Copy
Edit
npm install -g devlog
Usage
Run inside any Git repository:

bash
Copy
Edit
npx devlog
This will generate or update a file:

markdown
Copy
Edit
## 2025-08-08
- feat: add login form
- fix: crash on settings save
- docs: update API usage
How It Works
Runs git log to get commit history.

Groups commits by commit date.

Writes them to DEVLOG.md in reverse chronological order.

Example
bash
Copy
Edit
$ npx devlog
✅ DEVLOG.md updated!
Output in DEVLOG.md:

markdown
Copy
Edit
## 2025-08-08
- feat: add login form
- fix: crash on settings save
- docs: update API usage
Planned Features
🔹 Emoji mapping for commit types (feat → 🎯, fix → 🐛, docs → 📝)

🔹 Filtering by branch or tag

🔹 GitHub Action for automatic updates

License
MIT © 2025 Your Name
