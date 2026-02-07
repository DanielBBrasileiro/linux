# Challenge 5: Mastering Processes (Jobs)

Welcome to Level 5! Today you'll learn to control the programs running on your computer.

You'll stop, pause, and kill tasks directly from the terminal.

## The Scenarios

1.  **The Frozen Process:** Imagine a script is taking forever to run. Start a fake "long" process by typing `sleep 60` (this command asks the computer to wait for 60 seconds).
    *   **Goal:** Pause it immediately so you can type other commands.
    *   **Question:** What key combination halts a running foreground process?

2.  **Multitasking (Backgrounding):** You've paused the sleep command. Now, you want it to **continue running** but in the background, so you can use the terminal freely. What command sends the current job to the background (`bg`)?

3.  **Finding the Culprit:** You have a process running in the background. How do you find its **PID** (Process ID) or Job ID? What command lists all current jobs in this shell?

4.  **The Terminator:** Now kill that background process definitively. What command stops the process by its Job ID (from `jobs`) or PID?

---

## Answer Key

### 1. The Frozen Process
**Answer:** Press `Ctrl + Z`.
*   This **suspends** the current foreground process, giving you back control of the terminal prompt. It will show something like `[1]  + suspended  sleep 60`.

### 2. Multitasking (Backgrounding)
**Command:** `bg`
*   Type `bg` and press Enter. The suspended job will resume execution, but now in the **background**. It will show `[1]  + continued  sleep 60`.

### 3. Finding the Culprit
**Command:** `jobs`
*   This lists all jobs started in the current shell session, showing their status (Running, Suspended, Done).
*   Example Output: `[1]  + running    sleep 60`

### 4. The Terminator
**Command:** `kill %1` (if using Job ID) or `kill [PID]`
*   `%1` refers to Job #1 from the `jobs` list.
*   If you found the PID (e.g., 12345) using `ps` or `top`, you would run `kill 12345`.
