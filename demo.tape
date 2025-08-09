Output demo.gif
Set FontSize 16
Set Width 1000
Set Height 600
Set Padding 20

Type 'rm -rf demo-project && mkdir demo-project && cd demo-project'
Enter
Sleep 500ms

Type 'git init'
Enter
Sleep 500ms

Type 'echo "print(\"Hello World\")" > main.py'
Enter
Type 'git add .'
Enter
Type 'git -c user.name="Demo User" -c user.email="demo@example.com" commit -m "feat: initial commit"'
Enter
Sleep 500ms

Type 'echo "# Demo Project" > README.md'
Enter
Type 'git add .'
Enter
Type 'git commit -m "docs: add README"'
Enter
Sleep 500ms

Type 'echo "print(\"Another feature\")" >> main.py'
Enter
Type 'git add .'
Enter
Type 'git commit -m "feat: add another feature"'
Enter
Sleep 500ms

Type 'npx devlog'
Enter
Sleep 1500ms

Type 'cat DEVLOG.md'
Enter
Sleep 2000ms