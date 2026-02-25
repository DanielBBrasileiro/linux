# Challenge 21: The System Inspector (Disk & Memory)

Welcome to Day 21! Understanding the environment your programs are running in is a massive part of maintaining a server.

When a pipeline fails or an app crashes, it's not always a code bug. Sometimes, the server is just out of memory or disk space.

---

## The Scenarios

1.  **The Storage Crisis:**
    Your application failed to write to the database and threw a "No space left on device" error. You need a quick overview of how much free space exists on all mounted disks.
    *   **Question:** What command displays the total, used, and available disk space in a human-readable format (MB/GB)?

2.  **The Folder Audit:**
    You found out that the `/var/log` partition is full. You enter the `/var/log` folder and want to see the exact size of the files and folders inside it, also in a human-readable format.
    *   **Question:** What single command outputs a summary of the disk space used by each file and folder in the current directory?

3.  **The Memory Leak:**
    Your web server is running extremely slow. You suspect it has run out of RAM and has started using Swap memory (which is very slow). 
    *   **Question:** What command gives you a quick snapshot of the total, used, and free RAM and Swap memory in Megabytes?

4.  **The Server Age:**
    You logged into a new machine and want to know how long it has been running without a reboot, as well as the average load over the last 1, 5, and 15 minutes.
    *   **Question:** What simple one-word command provides this information?

---

## Answer Key & Explanations

### 1. The Storage Crisis
**Command:**
```zsh
df -h
```
> **Explanation:** `df` stands for "disk free." The `-h` flag makes it "human-readable," converting bytes into easier-to-read units like Megabytes (M) or Gigabytes (G). It helps answer "How much space is left?".

### 2. The Folder Audit
**Command:**
```zsh
du -sh *
```
> **Explanation:** `du` stands for "disk usage." Here, `-s` provides a summary total for each item instead of listing every single subfile, and `-h` makes it human-readable. The `*` indicates you want to check every item in the current directory.

### 3. The Memory Leak
**Command:**
```zsh
free -m
```
> **Explanation:** The `free` command reports memory usage. The `-m` flag displays the data in Megabytes. It clearly shows how much RAM is genuinely "free" and how much the system is reserving for cache/buffers.

### 4. The Server Age
**Command:**
```zsh
uptime
```
> **Explanation:** `uptime` instantly tells you the current time, how long the system has been running, how many user sessions are active, and the system load averages. A high load average compared to the number of CPU cores indicates the server is struggling.
