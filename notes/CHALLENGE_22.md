# Challenge 22: The Transporter (Network File Transfer)

Welcome to Day 22! Working on a server is great, but getting data in and out of it is a daily task. While `curl` and `wget` fetch files from public URLs, how do you move your own files securely between machines?

Today's mission: Master `scp` (Secure Copy) and the legendary `rsync`.

---

## The Scenarios

1.  **The Upload:**
    You have a local file named `dataset.csv`. You need to quickly copy it to the `/tmp` folder of a remote server at `192.168.1.50`, using the username `admin`.
    *   **Question:** What `scp` command performs this secure upload?

2.  **The Download:**
    The remote server (`192.168.1.50`) has an important log file at `/var/log/nginx/access.log`. You need to download it to your current local directory (`.`).
    *   **Question:** How do you write the `scp` command to download this file?

3.  **The Synchronizer:**
    You have a massive folder called `project_data/` containing thousands of files. You want to back it up to the remote server's `/backup/` directory. However, you want to be efficient: if you run the command again tomorrow, it should *only* copy the files that have changed.
    *   **Question:** What is the standard `rsync` command, using archive mode, to sync this folder?

4.  **The Progress Bar:**
    You are using `rsync` to transfer a 50GB database dump. It's taking a long time, and you have no idea if it's frozen or just slow.
    *   **Question:** Which flag do you add to `rsync` to show a real-time progress bar, transfer speed, and estimated time of arrival?

---

## Answer Key & Explanations

### 1. The Upload
**Command:**
```zsh
scp dataset.csv admin@192.168.1.50:/tmp
```
> **Explanation:** The syntax is `scp [source] [destination]`. Remote destinations are written as `user@host:/path/to/folder`. Since it uses SSH under the hood, it is secure and encrypted.

### 2. The Download
**Command:**
```zsh
scp admin@192.168.1.50:/var/log/nginx/access.log .
```
> **Explanation:** We just swapped the source and destination. The remote file is the source, and the `.` (current directory) is the destination.

### 3. The Synchronizer
**Command:**
```zsh
rsync -a project_data/ admin@192.168.1.50:/backup/
```
> **Explanation:** `rsync` is a miracle tool. The `-a` (archive) flag is standard—it recursively copies folders while preserving permissions, modification times, and symlinks. Most importantly, `rsync` computes a delta difference and only transmits the bytes that have changed, making subsequent backups lightning fast.

### 4. The Progress Bar
**Command:**
```zsh
rsync -aP project_data/ admin@192.168.1.50:/backup/
```
> **Explanation:** The `-P` flag is actually a shortcut for `--partial --progress`. It shows you exactly how fast the file is moving and allows resuming a transfer if your connection drops!
