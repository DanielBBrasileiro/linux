# Challenge 11: The Environment Architect

Welcome to Day 11! You've gone beyond the basics. Now let's control the shell environment itself.

Today's mission: Master variables and understand why `command not found` happens.

## The Scenarios

1.  **The Secret Identity:**
    *   **Goal:** Create a temporary variable named `CODENAME` with the value `Falcon`.
    *   **Verify:** Prove it works by printing "Agent Falcon reporting for duty" using the variable.
    *   **Question:** What is the full command to print this message using the variable?

2.  **The Path to Power:**
    *   **Goal:** Find out where your computer looks for programs like `git` and `python`.
    *   **Question:** What command displays the contents of your **PATH** variable?

3.  **The Persistence Limit:**
    *   **Experiment:** Close your terminal window and open a new one (or just imagine you did). Try to `echo $CODENAME`.
    *   **Question:** What happens? Why?

4.  **The Alias Shortcut (Bonus):**
    *   **Goal:** You are tired of typing `ls -lah`. Create a temporary alias `ll` that runs this command for you.
    *   **Question:** What command creates this shortcut?

---

## Answer Key

### 1. The Secret Identity
**Commands:**
```zsh
export CODENAME="Falcon"
echo "Agent $CODENAME reporting for duty"
```
*   `export` makes the variable available to child processes (like scripts you run).

### 2. The Path to Power
**Command:** `echo $PATH`
*   It prints a list of directories separated by colons (`:`). When you type a command, the shell checks these folders in order.

### 3. The Persistence Limit
**Answer:** The output is empty (or blank).
*   **Why?** Variables created in the terminal are **temporary**. They only exist for that specific session (PID). To make them permanent, you must add the export command to your shell configuration file (like `.zshrc` or `.bashrc`).

### 4. The Alias Shortcut
**Command:** `alias ll="ls -lah"`
*   Now, if you type `ll`, it runs `ls -lah`. Like variables, this is temporary unless added to `.zshrc`.
