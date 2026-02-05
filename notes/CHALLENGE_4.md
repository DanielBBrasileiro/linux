# Challenge 4: Automation & Scripting

Welcome to Level 4! You've mastered manual commands. Now, let's learn to **automate** them so you can work smarter, not harder.

Today's mission: Write Shell Scripts (`.sh`) to perform tasks automatically.

## The Scenarios

1.  **The "Hello World" Script:** Create a file named `hello.sh`. When you run it (using `./hello.sh`), it should print "Hello, [Your Name]! Today is [Current Date]". (Hint: Use `echo` and `date`). Don't forget to make it executable!

2.  **The System Report:** You need a daily report of your computer's disk usage. Create a script named `daily_report.sh`.
    *   It should run `df -h`.
    *   BUT, it should **save** the result into a file named `report.txt` instead of just showing it on the screen.

3.  **The Quick Backup:** Create a script named `backup_notes.sh`.
    *   It should create a folder named `backup_notes`.
    *   It should copy all your `.md` files from the `notes` folder into this new backup folder.
    *   It should print "Backup completed!" at the end.

---

## Guide & Hints

### How to create and run a script
1.  Create the file: `nano myscript.sh`
2.  Start with the "Shebang": `#!/bin/zsh`
3.  Write your commands.
4.  Save and exit (`Ctrl + O`, `Enter`, `Ctrl + X`).
5.  **Important:** Give permission: `chmod +x myscript.sh`
6.  Run it: `./myscript.sh`

### Variables
You can use variables to store text:
```zsh
NAME="Daniel"
echo "Hello, $NAME"
```

### Answer Key (Try first!)

<details>
<summary>Click to reveal answers</summary>

#### 1. The "Hello World" Script
File `hello.sh`:
```zsh
#!/bin/zsh
echo "Hello, Daniel! Today is $(date)"
```
Command to run:
`chmod +x hello.sh`
`./hello.sh`

#### 2. The System Report
File `daily_report.sh`:
```zsh
#!/bin/zsh
echo "Generating report..."
df -h > report.txt
echo "Report saved to report.txt"
```

#### 3. The Quick Backup
File `backup_notes.sh`:
```zsh
#!/bin/zsh
mkdir -p backup_notes
cp notes/*.md backup_notes/
echo "Backup completed!"
```
*(The `-p` flag in mkdir prevents errors if the folder already exists)*

</details>
