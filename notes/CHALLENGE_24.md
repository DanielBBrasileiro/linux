# Challenge 24: The Persistent Worker (nohup & tmux)

Welcome to Day 24! One of the most frustrating things in Linux is starting a long-running script over SSH, only to have it die because your internet connection dropped or you closed your terminal.

Today's mission: Learn how to keep your processes running even after you log out.

---

## The Scenarios

1.  **The Immortality Spell:**
    You have a script `heavy_processing.sh` that takes 4 hours to run. You want to start it and be able to close your terminal immediately without killing the process.
    *   **Question:** What command allows you to run a process that ignores the "hangup" signal (SIGHUP) when you logout, usually saving output to `nohup.out`?

2.  **The Virtual Terminal:**
    You need to work on a server but your connection is unstable. You want to open a "session" that you can "detach" from and "re-attach" to later, exactly where you left off.
    *   **Question:** What is the most popular terminal multiplexer used for this purpose (starts with `t...`)?

3.  **The Session List:**
    You are using `tmux` and you have three different sessions running in the background. 
    *   **Question:** What command lists all active `tmux` sessions?

4.  **The Great Escape:**
    You are inside a `tmux` session. You want to leave it running in the background and return to your main shell, but **without** killing the session processes.
    *   **Question:** What is the default keyboard shortcut (prefix followed by a key) to "detach" from a tmux session?

---

## Answer Key & Explanations

### 1. The Immortality Spell
**Command:**
```zsh
nohup ./heavy_processing.sh &
```
> **Explanation:** `nohup` (no hangup) intercepts the signal sent when the terminal closes. The `&` at the end is crucial—it sends the process to the background so you get your prompt back.

### 2. The Virtual Terminal
**Answer:**
```zsh
tmux
```
> **Explanation:** `tmux` allows you to create multiple virtual windows inside a single terminal. More importantly, it keeps those windows alive on the server even if you disconnect.

### 3. The Session List
**Command:**
```zsh
tmux ls
```
> **Explanation:** Short for `list-sessions`. It shows the names (or IDs) of all sessions currently being managed by the tmux server.

### 4. The Great Escape
**Answer:**
```text
Ctrl + b, then d
```
> **Explanation:** `Ctrl + b` is the default "prefix" for tmux commands. Pressing `d` after the prefix stands for "detach". To return to it later, you would use `tmux attach -t [name]`.
