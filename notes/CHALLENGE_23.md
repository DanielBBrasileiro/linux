# Challenge 23: The Gatekeeper (Users & Permissions)

Welcome to Day 23! Linux is a true multi-user system. That means security and access control are built into the very foundation of the file system. 

Every file belongs to an **Owner** and a **Group**. Understanding how to manage who can Read, Write, and Execute a file is essential for keeping servers secure.

---

## The Scenarios

1.  **The New Owner:**
    Your colleague "alice" just created a report named `financials.pdf`, but she accidentally created it using the `root` account. 
    *   **Question:** What command will change the **owner** of the file from `root` back to `alice`?

2.  **The Numeric Code:**
    You created a script `deploy.sh`. You want to grant yourself (the owner) full control (Read, Write, Execute). You want the group members and everyone else to only have Read access.
    *   **Question:** Using the **numeric** octal notation, what `chmod` command achieves this exact permission set?

3.  **The Group Share:**
    You have a directory named `shared_project`. You want to change the group ownership of this directory (and all files currently inside it) to the `developers` group.
    *   **Question:** What `chown` (or `chgrp`) command, with what flag, applies this change recursively to everything inside the folder?

4.  **The Superuser:**
    You need to restart the main web database, but the system tells you `Permission denied`. You know you need administrative privileges.
    *   **Question:** What command prefixes any other command to run it as the "superuser" (root), asking for your password first?

---

## Answer Key & Explanations

### 1. The New Owner
**Command:**
```zsh
sudo chown alice financials.pdf
```
> **Explanation:** The `chown` (change owner) command modifies who owns a file. Since the file belonged to `root`, you need `sudo` to force the change back to `alice`.

### 2. The Numeric Code
**Command:**
```zsh
chmod 744 deploy.sh
```
> **Explanation:** Linux permissions are calculated in three blocks (Owner, Group, Others). Read=4, Write=2, Execute=1.
> *   Owner (Full): 4 + 2 + 1 = **7**
> *   Group (Read Only): **4**
> *   Others (Read Only): **4**
> Standard scripts usually use `755` so others can execute them too, but `744` specifically answers the question above.

### 3. The Group Share
**Command:**
```zsh
sudo chown -R :developers shared_project/
```
*(Or `chgrp -R developers shared_project/`)*
> **Explanation:** The `-R` (Recursive) flag is crucial when changing ownership of a folder so the files inside update as well. In the syntax `chown user:group`, leaving the username blank and starting with a colon (`:developers`) tells the system to *only* change the group.

### 4. The Superuser
**Command:**
```zsh
sudo systemctl restart database
```
> **Explanation:** `sudo` stands for "Superuser Do" (or "Substitute User Do"). It elevates your current terminal session privileges to execute the command that follows it as the `root` user, which is required for critical system tasks like restarting databases or installing packages.
