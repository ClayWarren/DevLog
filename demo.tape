Output demo.gif
Set FontSize 16
Set Width 1000
Set Height 600
Set Padding 20

# Start fresh
Type "rm -rf demo-project && mkdir demo-project && cd demo-project"
Enter
Sleep 500ms

# Init Git repo
Type "git init"
Enter
Sleep 500ms

# Create first file & commit
Type "echo 'print(\"Hello World\")' > main.py"
Enter
Type "git add ."
Enter
Type "git -c user.name='Demo User' -c user.email='demo@example.com' commit -m 'feat: initial commit'"
Enter
Sleep 500ms

# Second commit
Type "echo '# Demo Project' > README.md"
Enter
Type "git add ."
Enter
Type "git commit -m 'docs: add README'"
Enter
Sleep 500ms

# Third commit
Type "echo 'print(\"Another feature\")' >> main.py"
Enter
Type "git add ."
Enter
Type "git commit -m 'feat: add another feature'"
Enter
Sleep 500ms

# Run DevLog
Type "npx devlog"
Enter
Sleep 1.5s

# Show generated log
Type "cat DEVLOG.md"
Enter
Sleep 2s
