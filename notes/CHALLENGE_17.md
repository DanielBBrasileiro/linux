# Challenge 17: The Data Surgeon (Advanced Text Processing)

Welcome to Day 17! Today, we leave the realm of basic searches (`grep`) and enter the domain of text manipulation and extraction. 

As a Data Professional, you often need to clean data *before* it even touches Python or SQL. Your main scalpels for this are `sed` (Stream Editor) and `awk`.

---

## The Scenarios

1.  **The Formatter:**
    You have a file named `raw_data.csv`. It currently uses commas (`,`) as delimiters, but your system requires semicolons (`;`).
    *   **Question:** What `sed` command will replace **every** comma with a semicolon in this file and output the result?

2.  **The Eraser:**
    A log file `app.log` has many lines containing the word "DEBUG". You want to simply remove the word "DEBUG" (replace it with nothing) from all lines.
    *   **Question:** How would you write the `sed` substitute command to delete the word "DEBUG" globally?

3.  **The Columnist:**
    You have a file `users.txt` where each line contains `Name Age Location`, separated by spaces. You only care about the names.
    *   **Question:** What `awk` command will print only the **first column** of the file?

4.  **The Custom Delimiter:**
    You are looking at `system_users.csv`, which is separated by commas (`,`). You want to use `awk` to print only the **second column** (maybe it contains the email addresses).
    *   **Question:** How do you tell `awk` to use a comma as the separator instead of spaces, and then print the second column?

---

## Answer Key & Explanations

### 1. The Formatter
**Command:**
```zsh
sed 's/,/;/g' raw_data.csv
```
> **Explanation:** `'s/old/new/g'` is the formula. `s` means substitute. `g` means global (apply to all occurrences on a line, not just the first one).

### 2. The Eraser
**Command:**
```zsh
sed 's/DEBUG//g' app.log
```
> **Explanation:** By leaving the "new" part empty (`s/DEBUG//g`), `sed` effectively deletes every instance of the word.

### 3. The Columnist
**Command:**
```zsh
awk '{print $1}' users.txt
```
> **Explanation:** `awk` automatically splits lines by whitespace. `$1` refers to the first column, `$2` to the second, and so on. `$0` would print the entire line.

### 4. The Custom Delimiter
**Command:**
```zsh
awk -F ',' '{print $2}' system_users.csv
```
> **Explanation:** The `-F` flag allows you to specify a custom Field Separator. `-F ','` tells `awk` to split columns at each comma. Then, `print $2` outputs the second column.
