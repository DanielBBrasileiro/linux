# Challenge 2: Permissions & Safety

Welcome to the second level! Today is all about controlling who can touch your files.

## The Scenarios

1.  **The Secret Diary:** You created a file named `diary.txt`. How do you change its permissions so that **ONLY YOU** can read and write to it, and **NO ONE ELSE** (not even your group) can read it? (Hint: Use numbers).

2.  **The Public Script:** You have a script `server_start.sh`. It needs to be editable by you, but **everyone else** should only be able to **execute** it (not edit it). What is the octal code for this?

3.  **The "LOCKED" Mistake:** You accidentally ran `chmod 000 file.txt`. What happens if you try to `cat file.txt` now? And how do you fix it to make it readable again?

4.  **Ownership Transfer:** You downloaded a file, but it says it belongs to `root` and you can't delete it. What specific command (using `sudo`) fixes this by giving ownership to your user (assume your user is `daniel`)?

---

## Answer Key

### 1. The Secret Diary
**Command:** `chmod 600 diary.txt`
**Why?**
*   User: 6 (4 Read + 2 Write)
*   Group: 0 (None)
*   Others: 0 (None)

### 2. The Public Script
**Command:** `chmod 755 server_start.sh`
**Why?**
*   User: 7 (RWX) - You have full control.
*   Group/Others: 5 (R-X) - They can Read and Execute, but not Write.

### 3. The "LOCKED" Mistake
*   **Result:** You get a `Permission denied` error, even if you are the owner!
*   **Fix:** `chmod 644 file.txt` (or `600` if private). As the owner, you can always change the permissions of your files, even if you can't read them.

### 4. Ownership Transfer
**Command:** `sudo chown daniel file.txt`
**Why?** Only `root` (via `sudo`) can change file ownership. The `chown` command stands for "Change Owner".
