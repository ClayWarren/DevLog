#!/usr/bin/env python3
"""
DevLog — Automatic Developer Journal MVP
Tracks today's git commits + terminal commands and saves them to Markdown.
"""

import os
import subprocess
import datetime
from pathlib import Path

# ===== Config =====
DEVLOG_DIR = Path.home() / "DevLogs"
EXCLUDED_CMDS = {"ls", "cd", "clear", "exit", "pwd"}

# ===== Utilities =====

def get_today_date():
    return datetime.datetime.now().strftime("%Y-%m-%d")

def ensure_devlog_dir():
    DEVLOG_DIR.mkdir(exist_ok=True)

def get_git_commits():
    """Get today's git commits for repos under the home directory."""
    commits = []
    today = datetime.datetime.now().strftime("%Y-%m-%d")

    # Search for git repos
    for root, dirs, files in os.walk(Path.home()):
        if ".git" in dirs:
            try:
                repo_path = Path(root)
                result = subprocess.run(
                    ["git", "-C", str(repo_path), "log", "--since=midnight", "--pretty=format:%h %s"],
                    capture_output=True, text=True
                )
                if result.stdout.strip():
                    commits.append((repo_path.name, result.stdout.strip().split("\n")))
            except Exception:
                pass
    return commits

def get_shell_commands():
    """Get today's shell commands from ~/.bash_history or ~/.zsh_history."""
    history_files = [Path.home() / ".bash_history", Path.home() / ".zsh_history"]
    today = get_today_date()
    commands = []

    for file in history_files:
        if file.exists():
            with open(file, "r", errors="ignore") as f:
                for line in f:
                    cmd = line.strip()
                    if cmd and cmd.split()[0] not in EXCLUDED_CMDS:
                        commands.append(cmd)
    return commands[-20:]  # last 20 commands

def write_markdown(commits, commands):
    """Write the devlog markdown file."""
    ensure_devlog_dir()
    today = get_today_date()
    filepath = DEVLOG_DIR / f"devlog_{today}.md"

    with open(filepath, "w") as f:
        f.write(f"# DevLog — {today}\n\n")
        f.write("## Summary\n")
        f.write("_Add your notes or AI summary here_\n\n")

        f.write("## Git Commits\n")
        if commits:
            for repo, repo_commits in commits:
                f.write(f"### {repo}\n")
                for commit in repo_commits:
                    f.write(f"- {commit}\n")
        else:
            f.write("_No commits today_\n")
        f.write("\n")

        f.write("## Shell Commands\n")
        if commands:
            for cmd in commands:
                f.write(f"- `{cmd}`\n")
        else:
            f.write("_No recorded commands_\n")

    print(f"✅ DevLog saved to {filepath}")

# ===== Main =====
if __name__ == "__main__":
    commits = get_git_commits()
    commands = get_shell_commands()
    write_markdown(commits, commands)
