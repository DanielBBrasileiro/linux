# Challenge 14: The Task Manager (Processes)

Welcome to Day 14! Your server is slow. Why? A rogue process is eating all the CPU.

Today's mission: Identify, manage, and kill processes from the terminal.

---

## The Scenarios

1.  **The Resource Hog:**
    You need to see, in real-time, which process is currently consuming the most CPU on your system.
    *   **Question:** What is the interactive command that shows a constantly updating list of running processes?

2.  **The Background Job:**
    You started a long script (`./backup.sh`), but it's blocking your terminal. You paused it with `Ctrl + Z`.
    *   **Question:** What command sends this paused job to run in the **background** so you can continue working?

3.  **The Assassin:**
    A python script with PID `12345` has frozen and won't close normally with a standard kill command.
    *   **Question:** What command forces it to close (the "nuclear option")?

4.  **The Search:**
    You need to find the ID (PID) of a specific program named `nginx` amongst hundreds of processes.
    *   **Question:** How do you combine `ps aux` and `grep` to find it?

---

## Answer Key & Explanations

### 1. The Resource Hog
**Command:**
```zsh
top
```
> **Explanation:** The `top` command provides a real-time, dynamic view of the running system. It updates every few seconds. Usually, pressing `q` exits the view. (Modern alternative: `htop`).

### 2. The Background Job
**Command:**
```zsh
bg
```
> **Explanation:** The `bg` (background) command resumes the most recently suspended job (stopped with `Ctrl + Z`) and executes it in the background. Use the `jobs` command to list active jobs.

### 3. The Assassin
**Command:**
```zsh
kill -9 12345
```
> **Explanation:** The `-9` flag sends the `SIGKILL` signal, which cannot be ignored by the process. It forces the operating system to terminate the program immediately.

### 4. The Search
**Command:**
```zsh
ps aux | grep nginx
```
> **Explanation:** `ps aux` lists all running processes (for all users), and the pipe `|` sends that list to `grep`, which filters only lines containing "nginx".
