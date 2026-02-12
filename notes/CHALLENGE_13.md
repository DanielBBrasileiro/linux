# Challenge 13: The Black Box (Logs)

Welcome to Day 13! If your server crashes at 3 AM, the logs will tell you why.

Today's mission: Become a detective by reading system logs.

## The Scenarios

1.  **The Watcher:**
    *   **Goal:** You want to see every time someone tries to log in (or fail a password) in real-time.
    *   **Question:** What command "follows" the file `/var/log/auth.log` (or `secure` on some systems)?

2.  **The Hardware Failure:**
    *   **Goal:** Your USB drive is acting weird. You need low-level kernel messages to see if it's being detected.
    *   **Question:** What specific command prints the kernel ring buffer?

3.  **The Error Hunter:**
    *   **Goal:** You suspect a service crashed yesterday. You need to search for the word `error` (case-insensitive) inside the main system log (`/var/log/syslog` or `/var/log/messages`).
    *   **Question:** What is the `grep` command to do this?

4.  **The Log Rotation:**
    *   **Observation:** You see files like `syslog.1`, `syslog.2.gz` in `/var/log`.
    *   **Question:** What system mechanism automatically archives and compresses old logs so your disk doesn't fill up? (Hint: It starts with `log...`).

---

## Answer Key

### 1. The Watcher
**Command:** `tail -f /var/log/auth.log` (Debian/Ubuntu) or `tail -f /var/log/secure` (RHEL/CentOS).
*   On macOS, modern logs are often viewed via the `log stream` command, but `/var/log/system.log` still exists.

### 2. The Hardware Failure
**Command:** `dmesg` (or `sudo dmesg`).
*   Usually piped to `tail` to see the most recent events: `dmesg | tail`.

### 3. The Error Hunter
**Command:** `grep -i "error" /var/log/syslog`
*   `-i`: Ignore case (finds "Error", "ERROR", "error").

### 4. The Log Rotation
**Answer:** `logrotate`
*   It's a utility that renames, compresses, and deletes old logs based on configuration.
