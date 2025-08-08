# 📝 DevLog — Automatic Developer Journal

> **“Ever forget what you worked on yesterday? DevLog remembers — so you don’t have to.”**  
> Tracks your git commits + terminal commands for the day and saves them in a clean Markdown log.  
> Perfect for progress tracking, daily stand-ups, and portfolios.

---

## 🚀 Demo

![DevLog Demo](demo.gif)  
<sub>(record with [asciinema](https://asciinema.org/) or [vhs](https://github.com/charmbracelet/vhs))</sub>

---

## ✨ Features
✅ **Zero setup** — runs instantly  
✅ Tracks **today’s git commits** from all local repos  
✅ Logs recent **terminal commands**  
✅ Saves everything to a **Markdown file** (`~/DevLogs/devlog_YYYY-MM-DD.md`)  
✅ Works offline (AI summaries optional in future versions)  

---

## 📦 Install

```bash
# Clone the repo
git clone https://github.com/YOUR-USERNAME/devlog.git
cd devlog

# Make it executable
chmod +x devlog.py

# Run
./devlog.py
````

> 💡 Coming soon: `pipx install devlog` for one-command global install.

---

## 🛠 Usage

```bash
./devlog.py
```

Generates a file like:

```markdown
# DevLog — 2025-08-08

## Summary
_Add your notes or AI summary here_

## Git Commits
### myproject
- a12bc34 feat(auth): implement JWT-based login
- b56de78 fix(docker): use multi-stage build to reduce image size

## Shell Commands
- `npm install jsonwebtoken`
- `docker build . --no-cache`
- `git push origin feature/auth`
```

---

## 📂 Where Logs Are Saved

All logs are stored in:

```
~/DevLogs/
```

---

## 🗺 Roadmap

* [ ] AI-powered daily summaries
* [ ] Notion/Obsidian sync
* [ ] Retro mode (generate logs from past X days)
* [ ] GitHub Action to auto-comment PR summaries
* [ ] Configurable exclusions for shell commands

---

## 🔍 Competitors

We’ve looked at existing tools like:

* **automoto/devlog** (manual CLI logging, Go-based)
* **mihael/devlog** (session-based Ruby logging)
* **DEVLOG AI** (manual web journaling)
* **Developer Journal** (closed-source SaaS requiring commit tags)

**Why DevLog is different:**

* **Automatic capture** of both git commits & shell commands
* **Zero effort** — just run `devlog` and get your log
* **Local, open-source, and private by default**

---

## 🤝 Contributing

Pull requests welcome! If you have ideas for features or integrations, open an issue.

---

## ⭐ Why Star This Repo?

If you find DevLog useful (or just love the idea), starring the repo helps more developers discover it. 🌟

---

**License:** MIT

```

---
