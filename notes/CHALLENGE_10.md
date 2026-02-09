# Challenge 10: The Remote Worker (SSH)

Welcome to the **FINAL LEVEL** of the 10-Day Challenge! You are now ready to work on servers in the cloud.

Today's mission: Connect to another computer securely and move data.

## The Scenarios

1.  **The Key to the Kingdom:**
    *   **Goal:** You need to log in to a server **without a password** for automation.
    *   **Question:** What command generates a new public/private key pair on your local machine?

2.  **The Secure Upload:**
    *   **Goal:** You want to send your local file `report.pdf` to the remote server `192.168.1.100`.
    *   **Destination:** Put it in the user `admin`'s home folder (`~`).
    *   **Question:** What is the full `scp` command?

3.  **The "Who Am I?" Check:**
    *   **Goal:** You are connected to a server via SSH. You want to confirm you are on the remote machine and not your local one.
    *   **Question:** What command prints the hostname of the computer you are currently using?

4.  **The Secure Copy ID:**
    *   **Goal:** After generating your key (Step 1), how do you easily **copy** your public key to the remote server so it recognizes you?
    *   **Question:** What is the specific command designed for this?

---

## Answer Key

### 1. The Key to the Kingdom
**Command:** `ssh-keygen` (or `ssh-keygen -t ed25519` for modern keys).
*   It creates `id_ed25519` (Private - Keep secret!) and `id_ed25519.pub` (Public - Share freely).

### 2. The Secure Upload
**Command:** `scp report.pdf admin@192.168.1.100:~`
*   `scp [source] [destination]`
*   The colon `:` is mandatory to separate the host from the path. `~` means the user's home directory.

### 3. The "Who Am I?" Check
**Command:** `hostname`
*   Prints the name of the machine. Useful to avoid running dangerous commands on the wrong server!

### 4. The Secure Copy ID
**Command:** `ssh-copy-id admin@192.168.1.100`
*   This automatically appends your public key to the server's `~/.ssh/authorized_keys` file.
