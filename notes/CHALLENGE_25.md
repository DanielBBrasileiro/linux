# Challenge 25: The Infrastructure Inspector (systemd & journalctl)

Welcome to Day 25! On professional Linux servers (like Ubuntu, Debian, or CentOS), almost everything—from your database to your web server—runs as a **service** (or daemon) managed by a system called `systemd`.

Today's mission: Learn how to manage background services and inspect their logs.

---

## The Scenarios

1.  **The Engine Start:**
    You just installed a new web server (like `nginx`). However, it is not serving pages yet because the service hasn't been started.
    *   **Question:** What `systemctl` command do you use to **start** a service named `nginx`?

2.  **The Auto-Runner:**
    You want a service named `docker` to start automatically every time the server reboots.
    *   **Question:** What command "enables" a service to start at boot time?

3.  **The Health Check:**
    Something is wrong with your database (`postgresql`). You need to see if the service is currently "active (running)" or if it has "failed".
    *   **Question:** What command shows the current live status of a service?

4.  **The Log Reader:**
    A service named `api-backend` just crashed. You need to see the last 20 lines of its internal logs to figure out why.
    *   **Question:** What command (starts with `journal...`) allows you to view the logs of a specific unit/service?

---

## Answer Key & Explanations

### 1. The Engine Start
**Command:**
```zsh
sudo systemctl start nginx
```
> **Explanation:** `systemctl` is the central tool for controlling the `systemd` manager. Most service operations require `sudo` privileges.

### 2. The Auto-Runner
**Command:**
```zsh
sudo systemctl enable docker
```
> **Explanation:** `start` runs it now; `enable` ensures it runs later (after reboots). They are different operations!

### 3. The Health Check
**Command:**
```zsh
systemctl status postgresql
```
> **Explanation:** This provides a wealth of info: whether it's enabled, its current status, the Process ID (PID), its memory usage, and the most recent log entries.

### 4. The Log Reader
**Command:**
```zsh
journalctl -u api-backend -n 20
```
> **Explanation:** `journalctl` is the tool for reading the systemd journal. The `-u` flag filters by "unit" (the service name), and `-n 20` limits it to the last 20 lines (just like `tail`). For real-time monitoring, you can use `journalctl -u api-backend -f`.
