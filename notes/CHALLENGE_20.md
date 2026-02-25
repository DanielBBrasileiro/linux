# Challenge 20: The Search Party (Finding Files)

Welcome to Day 20! You've learned how to search *inside* files (`grep`), but what happens when you lose a file itself among millions of others in an entire system? 

To locate files and directories based on names, sizes, or modification dates, we use the incredibly powerful `find` command.

---

## The Scenarios

1.  **The Lost Script:**
    You know there's a file called `backup_generator.sh` somewhere on your server, but you don't know the folder. 
    *   **Question:** How do you search the entire system (`/`) for a file with this exact name?

2.  **The Log Cleanup:**
    Your current folder (`.`) is getting cluttered with logs. You want to find all files (not directories) that end with `.log`.
    *   **Question:** What `find` command searches the current directory for files matching the name pattern `*.log`? (Remember to quote your wildcards!).

3.  **The Space Hog:**
    Your disk is almost full. You need to identify large files inside your `/var` directory. You want to find files larger than 100 Megabytes.
    *   **Question:** Which flag in `find` allows you to filter by size? Write the command to find files larger than 100M in `/var`.

4.  **The Time Traveler:**
    You made changes to a configuration file in your Home directory (`~`) sometime within the last 2 days, but you forgot its name.
    *   **Question:** How do you search your home directory for files modified less than 2 days ago?

---

## Answer Key & Explanations

### 1. The Lost Script
**Command:**
```zsh
find / -name "backup_generator.sh" 2>/dev/null
```
> **Explanation:** The first argument is the starting directory (`/` for root). `-name` looks for the exact name. The `2>/dev/null` hides all the "Permission denied" errors that normally flood the screen when searching as a regular user in root folders.

### 2. The Log Cleanup
**Command:**
```zsh
find . -type f -name "*.log"
```
> **Explanation:** `.` starts the search in the current folder. `-type f` restricts the results strictly to files (ignoring folders named 'something.log'). `*.log` is enclosed in quotes so the shell doesn't try to expand it before running the `find` command.

### 3. The Space Hog
**Command:**
```zsh
find /var -size +100M
```
> **Explanation:** The `-size` flag filters based on file size. The `+` means "greater than". `100M` stands for 100 Megabytes. (You can also use `k` for kilobytes or `G` for gigabytes).

### 4. The Time Traveler
**Command:**
```zsh
find ~ -mtime -2
```
> **Explanation:** `-mtime` filters by "modification time" in days. `-2` means *less than* 2 days ago. If you used `+2`, it would mean *more than* 2 days ago.
