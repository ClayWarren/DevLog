📝 DevLog — Automatic Developer Journal
“Ever forget what you worked on yesterday? DevLog remembers — so you don’t have to.”
Tracks your git commits + terminal commands for the day and saves them in a clean Markdown log.
Perfect for progress tracking, daily stand-ups, and portfolios.

🚀 Demo

<sub>(record with asciinema or vhs)</sub>

✨ Features
✅ Zero setup — runs instantly
✅ Tracks today’s git commits from all local repos
✅ Logs recent terminal commands
✅ Saves everything to a Markdown file (~/DevLogs/devlog_YYYY-MM-DD.md)
✅ Works offline (AI summaries optional in future versions)

📦 Install
bash
Copy
Edit
# Clone the repo
git clone https://github.com/YOUR-USERNAME/devlog.git
cd devlog

# Make it executable
chmod +x devlog.py

# Run
./devlog.py
💡 Coming soon: pipx install devlog for one-command global install.

🛠 Usage
bash
Copy
Edit
./devlog.py
Generates a file like:

markdown
Copy
Edit
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
📂 Where Logs Are Saved
All logs are stored in:

javascript
Copy
Edit
~/DevLogs/
🗺 Roadmap
 AI-powered daily summaries

 Notion/Obsidian sync

 Retro mode (generate logs from past X days)

 GitHub Action to auto-comment PR summaries

 Configurable exclusions for shell commands

🤝 Contributing
Pull requests welcome! If you have ideas for features or integrations, open an issue.

⭐ Why Star This Repo?
If you find DevLog useful (or just love the idea), starring the repo helps more developers discover it. 🌟

License: MIT
