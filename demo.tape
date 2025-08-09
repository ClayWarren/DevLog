# demo.tape - VHS tape to demo DevLog
# Output GIF path
Output demo.gif

# Visual settings
Set FontSize 28
Set Width 1100
Set Height 320
Set TypingSpeed 40 ms

# ---------------------
# Setup (hidden so the GIF looks clean)
# ---------------------
Hide
# create a small demo repo inside the user's HOME so devlog.py will find it
Type "rm -rf ~/demo-devlog && mkdir -p ~/demo-devlog && cd ~/demo-devlog"
Enter
# create a sample file
Type "printf 'print(\"hello world\")\n' > main.py"
Enter
# init git and commit (use -c to avoid relying on global git config)
Type "git init ."
Enter
Type "git add main.py"
Enter
Type "git -c user.name=\"Demo User\" -c user.email=\"demo@example.com\" commit -m \"feat: add main.py\""
Enter
# copy the devlog script into the demo folder (assumes you put devlog.py next to demo.tape)
Type "cp ../devlog.py . || true"
Enter
Type "chmod +x devlog.py || true"
Enter
# done hidden setup
Show

# ---------------------
# Demo: run devlog and show generated file path
# ---------------------
Type "pwd"
Enter
Sleep 300 ms

# run the script (this will create ~/DevLogs/devlog_YYYY-MM-DD.md)
Type "./devlog.py"
Enter
Sleep 1.2 s

# show the created devlog file
Type "echo ''; echo '-----'; echo 'Preview of generated log:'; echo '-----'; echo ''"
Enter
Sleep 300 ms
Type "sed -n '1,120p' ~/DevLogs/devlog_$(date +%Y-%m-%d).md || true"
Enter
Sleep 2 s

# finish
Type "echo ''; echo 'Demo complete — drop demo.gif into README.md!'"
Enter
Sleep 1 s
