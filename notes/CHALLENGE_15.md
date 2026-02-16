# Challenge 15: The Bridge (Networking)

Welcome to Day 15! Your terminal is not an island. Let's connect to the world.

Today's mission: Verify connectivity, download files, and check your network identity.

---

## The Scenarios

1.  **The Lifeline:**
    Your server seems offline. You need to check if it can reach the internet (e.g., to Google's DNS `8.8.8.8`).
    *   **Question:** What command sends small packets to a host to verify connectivity?

2.  **The Download:**
    You need to download a file from `https://example.com/data.csv` and save it with the **same filename**.
    *   **Question:** Which `curl` flag should you use?

3.  **The Identity:**
    You are configuring a firewall and need to know your server's **Local IP Address**.
    *   **Question:** What is the classic command (on macOS/Linux) to list network interfaces?

4.  **The Listener:**
    You started a web server on port 8080 but can't access it. You want to see if the port is actually open and listening.
    *   **Question:** What command (starts with `net...` or `ss`) lists open network connections and listening ports?

---

## Answer Key & Explanations

### 1. The Lifeline
**Command:**
```zsh
ping 8.8.8.8
```
> **Explanation:** `ping` sends ICMP ECHO_REQUEST packets. If you get a reply, your network connection is working. Press `Ctrl + C` to stop it.

### 2. The Download
**Command:**
```zsh
curl -O https://example.com/data.csv
```
> **Explanation:** The `-O` (uppercase O) flag tells `curl` to save the file using the remote filename (`data.csv`). If you wanted to rename it, you would use `-o newname.csv` (lowercase).

### 3. The Identity
**Command:**
```zsh
ifconfig
```
> **Alternative (modern Linux):** `ip a`
> **Explanation:** `ifconfig` (Interface Configuration) shows all network adapters. Look for `en0` or `eth0` and the `inet` address (e.g., `192.168.1.5`).

### 4. The Listener
**Command:**
```zsh
netstat -an | grep LISTEN
```
> **Alternative (modern Linux):** `ss -tuln`
> **Explanation:** `netstat` shows network status. `-a` (all), `-n` (numeric, no DNS). We pipe to `grep` to find only ports that are in `LISTEN` mode (waiting for connections).
