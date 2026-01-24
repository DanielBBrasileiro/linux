# Linux Terminal Hands-On Challenge

Test your knowledge of the Linux terminal with these real-world scenarios. Try to solve them yourself before looking at the **Answer Key** below.

## The Scenarios

1. **Real-time Log Monitoring:** You have a file named `access.log`. How do you view the last lines of the file and keep the terminal updating automatically as new logs arrive?
2. **Smart Filtering:** How do you list all files in your current directory, but **exclude** (hide) everything that ends with `.txt`?
3. **Error Counting:** You need to find out exactly **how many times** the word `"timeout"` appears in a file named `server.log`, ignoring whether it is uppercase or lowercase.
4. **Agile Navigation:** You are currently located at `~/Documents/Projects/Python`. How do you move a file named `script.py` to your **Home directory** (`~`) using only **relative paths**?
5. **Script Permissions:** You just created a shell script named `backup.sh`. What is the command to grant it **execution permissions**?

---

## Answer Key & Explanations

### 1. Log Analysis

**Command:** ```zsh
tail -f access.log

```
**Explanation:** The `-f` (follow) flag keeps the file open and updates the display in real-time as new lines are appended to the file. This is essential for debugging live servers.

### 2. Smart Filtering
**Command:** ```zsh
ls | grep -v "\.txt"

```

**Explanation:** The `-v` flag inverts the search. By piping the output of `ls` to `grep`, the terminal hides any line that matches the `.txt` pattern.

### 3. Error Counting

**Command:** ```zsh
grep -ic "timeout" server.log

```
**Explanation:** This command combines two powerful flags: `-i` (ignore case) and `-c` (count). It provides the total number of occurrences without printing the lines themselves.

### 4. Agile Navigation
**Command:** ```zsh
mv script.py ../../..

```

**Explanation:** Each `..` represents moving up one level in the directory tree.

* `..` (from `Python` to `Projects`)
* `../..` (from `Projects` to `Documents`)
* `../../../` (from `Documents` to `Home`)

### 5. Script Permissions

**Command:** ```zsh
chmod +x backup.sh

```
**Explanation:** The `chmod` (change mode) command with the `+x` flag tells the operating system that this file is allowed to be executed as a program.

---
