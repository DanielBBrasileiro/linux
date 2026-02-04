# Challenge 3: The Power of Pipes & Grep

Welcome to Level 3! Now that you know how to navigate and control permissions, it's time to become a **Data Detective**.

Today's mission: Filter information and count things without opening files manually.

## The Scenarios

1.  **The Needle in the Haystack:** You have a directory full of files. How do you list **only** the files that end with `.conf`? (Hint: Use `ls` and `grep`).

2.  **The Counter:** You ran a command that outputted a huge list of names. How do you **count** exactly how many lines were outputted without counting them one by one?

3.  **The Log Analysis:** You have a file called `server.log`. You need to find every line that contains the word "ERROR" and also shows the line number so you can find it later. What command do you use?

4.  **The Combo (Boss Level):** How do you count how many files in the current folder contain the word "backup" in their name? (Combine `ls`, `grep`, and `wc`).

---

## Answer Key

### 1. The Needle in the Haystack
**Command:** `ls | grep ".conf"`
**Why?**
*   `ls` lists everything.
*   The pipe (`|`) passes that list to `grep`.
*   `grep ".conf"` filters to show only lines containing ".conf".

### 2. The Counter
**Command:** `command | wc -l`
**Why?**
*   `wc` stands for Word Count.
*   The `-l` flag tells it to count **Lines** only.
*   Example: `ls | wc -l` tells you how many files are in the folder.

### 3. The Log Analysis
**Command:** `grep -n "ERROR" server.log`
**Why?**
*   `grep` searches for the text.
*   `-n` adds the **Line Number** to the output (e.g., `42: Critical ERROR`).

### 4. The Combo (Boss Level)
**Command:** `ls | grep "backup" | wc -l`
**Why?**
*   Step 1: `ls` gets all files.
*   Step 2: `grep "backup"` keeps only the ones with "backup" in the name.
*   Step 3: `wc -l` counts how many remained.
