# Challenge 18: The Automator (Shell Scripting)

Welcome to Day 18! You've learned how to manipulate files, networks, and processes. Now, it's time to stop typing the same commands every day. Let's write scripts!

As a Data Professional or SysAdmin, your job is to automate repetitive tasks.

---

## The Scenarios

1.  **The Shebang:**
    You are creating a new script named `report_generator.sh`. You want to explicitly tell the system to use the `zsh` interpreter.
    *   **Question:** What must be the very first line of your script?

2.  **The Environment:**
    Inside your script, you want to store a folder path in a variable named `BACKUP_DIR` so you can use it multiple times.
    *   **Question:** How do you declare this variable and assign it the value `/var/backups`?

3.  **The Permission Gate:**
    You saved `report_generator.sh` and tried to run it by typing `./report_generator.sh`, but the terminal returned `Permission denied`.
    *   **Question:** What command must you run to make the script executable?

4.  **The Silent Run:**
    Your script works perfectly, but you want it to run silently without printing its output to the screen. Instead, you want all output and errors to be sent to a file named `cron.log`.
    *   **Question:** How do you run the script and redirect everything (stdout and stderr) to `cron.log`? (Hint: `>`)

---

## Answer Key & Explanations

### 1. The Shebang
**Answer:**
```zsh
#!/bin/zsh
```
> **Explanation:** The `#!` at the beginning of a file is called a "shebang." It tells the operating system which interpreter to use when executing the file. If you were writing a Bash script, it would be `#!/bin/bash`.

### 2. The Environment
**Command:**
```zsh
BACKUP_DIR="/var/backups"
```
> **Explanation:** In shell scripting, you set variables without spaces around the `=` sign. To use this variable later in the script, you would refer to it with a dollar sign: `echo $BACKUP_DIR`.

### 3. The Permission Gate
**Command:**
```zsh
chmod +x report_generator.sh
```
> **Explanation:** Linux systems require explicit permission to run text files as programs for security purposes. The `+x` adds the e**x**ecute permission for the file.

### 4. The Silent Run
**Command:**
```zsh
./report_generator.sh > cron.log 2>&1
```
> **Explanation:** This is a classic shell trick. `>` redirects regular output (stdout) to `cron.log`. The `2>&1` tells the shell to redirect errors (stderr, which is file descriptor 2) to the same place as regular output (file descriptor 1).
