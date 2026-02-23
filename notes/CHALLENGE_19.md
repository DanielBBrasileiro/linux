# Challenge 19: The Data Pipeline (Combining Commands)

Welcome to Day 19! You know how to search (`grep`), count (`wc`), and extract columns (`awk`). Now, it's time to build a pipeline to answer complex questions without ever leaving the terminal.

The Pipe (`|`) is the most powerful concept in Linux. It takes the output of the command on the left and feeds it as input to the command on the right.

---

## The Scenarios

1.  **The Error Counter:**
    You have a file `system.log`. You want to find all lines containing the word "ERROR" and immediately count how many there are.
    *   **Question:** How do you pipe `grep` and `wc` to get only the number of error lines?

2.  **The Extractor:**
    You have a `users.csv` file structured as `id,name,email`. You want to see only the emails, but the file has a header.
    *   **Question:** You know `awk -F ',' '{print $3}' users.csv` extracts the email column. What command can you pipe this into to skip the very first line (the header) and show the rest? (Hint: starts with `tail`).

3.  **The Sorter:**
    You used an `awk` command to extract a list of IP addresses from a log file into a stream. Now you want to view them sorted alphabetically.
    *   **Question:** What simple command do you pipe the list into to sort the output?

4.  **The Analyst (The Ultimate Combo):**
    You have a sorted list of IP addresses coming from a pipe. Many are duplicates. You want to see a list of *unique* IPs along with a count of how many times each appeared.
    *   **Question:** What command counts unique consecutive lines?

---

## Answer Key & Explanations

### 1. The Error Counter
**Command:**
```zsh
grep "ERROR" system.log | wc -l
```
> **Explanation:** `grep` outputs all lines with "ERROR". Instead of printing them to the screen, the pipe `|` sends them to `wc -l`, which counts the number of lines it received.

### 2. The Extractor
**Command:**
```zsh
awk -F ',' '{print $3}' users.csv | tail -n +2
```
> **Explanation:** `tail -n +2` tells `tail` to output everything starting from line number 2, effectively skipping the first line (the header).

### 3. The Sorter
**Command:**
```zsh
... | sort
```
> **Explanation:** The `sort` command takes text from standard input and sorts it line by line alphabetically or numerically.

### 4. The Analyst
**Command:**
```zsh
... | uniq -c
```
> **Explanation:** `uniq` collapses identical *consecutive* lines into one. The `-c` flag tells it to prepend the output with the number of occurrences. **Important:** `uniq` only works if the input is already sorted, which is why it's usually preceded by `sort`.
