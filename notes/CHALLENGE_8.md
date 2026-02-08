# Challenge 8: The Data Surgeon (Text Processing)

Welcome to Level 8! As a Data Professional, you often get "messy" data. Python is great, but fixing errors directly in the terminal is **faster** for huge files.

Today's mission: Clean a dataset without opening it.

## The Scenarios

1.  **Create the Messy File:**
    *   Create a file named `raw_data.txt` with the following content (copy and paste):
        ```text
        ID,Name,Salary
        101,Alice,50000
        102,Bob,60000
        103,Charlie,70000
        ```
    *   Use `nano` or just `echo` to create it.

2.  **The Typos (sed):**
    *   **Goal:** You realized the delimiter should be a **semicolon** (`;`) instead of a comma (`,`).
    *   **Question:** What `sed` command replaces ALL commas with semicolons and saves the result to `clean_data.txt`?

3.  **The Column Extraction (awk):**
    *   **Goal:** You only need the **Names** (the 2nd column) from `clean_data.txt`.
    *   **Question:** What `awk` command prints ONLY the second column, using `;` as the separator?

4.  **The Pipeline Combo (Boss Level):**
    *   **Goal:** Do it all in one line! Take `raw_data.txt`, replace commas with semicolons, AND extract the names, displaying them on the screen.
    *   **Hint:** Use the pipe `|` to connect `sed` and `awk`.

---

## Answer Key

### 1. Create the Messy File
**Command:**
```zsh
echo "ID,Name,Salary\n101,Alice,50000\n102,Bob,60000\n103,Charlie,70000" > raw_data.txt
```

### 2. The Typos (sed)
**Command:** `sed 's/,/;/g' raw_data.txt > clean_data.txt`
*   `s`: Substitute
*   `,`: The old character
*   `;`: The new character
*   `g`: Global (replace all occurrences on the line)

### 3. The Column Extraction (awk)
**Command:** `awk -F ';' '{print $2}' clean_data.txt`
*   `-F ';'` tells awk that fields are separated by semicolons.
*   `$2` prints the second column.

### 4. The Pipeline Combo (Boss Level)
**Command:** `cat raw_data.txt | sed 's/,/;/g' | awk -F ';' '{print $2}'`
*   OR simpler: `sed 's/,/;/g' raw_data.txt | awk -F ';' '{print $2}'`
