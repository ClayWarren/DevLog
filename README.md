# devlog 🗒️
Generate a **daily changelog** from your Git commit history — automatically grouped by date and written to `DEVLOG.md`.


---

## ✨ Features
- 📅 Groups commits by day
- 📝 Outputs clean, shareable Markdown
- ⚡ Runs instantly via CLI (`npx devlog`)
- 💻 Zero configuration — works in any Git repo

---

## 🚀 Installation

### Option 1 — Local Dev
```bash
git clone https://github.com/yourusername/devlog.git
cd devlog
npm install
npm run build
````

### Option 2 — Global Install

```bash
npm install -g devlog
```

---

## 📦 Usage

Run inside any Git repository:

```bash
npx devlog
```

This will generate or update a file:

```markdown
## 2025-08-08
- feat: add login form
- fix: crash on settings save
- docs: update API usage
```

---

## ⚙️ How It Works

1. Runs `git log` to get commit history.
2. Groups commits by commit date.
3. Writes them to `DEVLOG.md` in reverse chronological order.

---

## 🖥 Example

```bash
$ npx devlog
✅ DEVLOG.md updated!
```

Output in `DEVLOG.md`:

```markdown
## 2025-08-08
- feat: add login form
- fix: crash on settings save
- docs: update API usage
```

---

## 📜 License

MIT © 2025 Clay Warren
