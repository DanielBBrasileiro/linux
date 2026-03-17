# Challenge 26: The Security Guard (SSH Keys & Config)

Welcome to Day 26! Typing passwords every time you connect to a server is slow and insecure. A professional Linux user relies on SSH Keys for "password-less" login and uses the SSH config file to manage dozens of connections effortlessly.

Today's mission: Secure your connections and automate your login process.

---

## The Scenarios

1.  **The Key Maker:**
    You need to generate a new pair of ultra-secure SSH keys (public and private) on your local machine using the modern `ed25519` algorithm.
    *   **Question:** What command generates these keys?

2.  **The Delivery Man:**
    You have your public key ready on your Mac/PC. You want to send it to a remote server (`192.168.1.100`) so you never have to type your password again.
    *   **Question:** What specific command automates the "copying" of your public key to the server's `authorized_keys` file?

3.  **The Alias Shortcut:**
    Instead of typing `ssh daniel@very-long-production-server-address.com`, you want to just type `ssh prod`.
    *   **Question:** In which hidden file in your home directory (`~/.ssh/...`) do you define these host aliases and shortcuts?

4.  **The Lockdown:**
    For security reasons, you want to open the SSH server configuration on the **server** to disable password authentication entirely (forcing everyone to use keys).
    *   **Question:** What is the full path to the SSH daemon configuration file (usually found in `/etc/...`)?

---

## Answer Key & Explanations

### 1. The Key Maker
**Command:**
```zsh
ssh-keygen -t ed25519
```
> **Explanation:** This creates two files: `id_ed25519` (your private key—keep it secret!) and `id_ed25519.pub` (your public key—shared with servers). Use `-t ed25519` for better security and smaller keys compared to older RSA keys.

### 2. The Delivery Man
**Command:**
```zsh
ssh-copy-id daniel@192.168.1.100
```
> **Explanation:** This command handles the "handshake." It logs in once with your password, appends your public key to the remote `~/.ssh/authorized_keys` file, and sets the correct permissions.

### 3. The Alias Shortcut
**Answer:**
```text
~/.ssh/config
```
> **Explanation:** This file allows you to map short names to complex connection details. Example entry:
> ```text
> Host prod
>   HostName very-long-production-server-address.com
>   User daniel
>   IdentityFile ~/.ssh/id_ed25519
> ```

### 4. The Lockdown
**Path:**
```text
/etc/ssh/sshd_config
```
> **Explanation:** This is the configuration for the SSH **Daemon** (the server part). Modifying `PasswordAuthentication no` inside this file and restarting the service with `sudo systemctl restart ssh` effectively locks out anyone without a valid key.
