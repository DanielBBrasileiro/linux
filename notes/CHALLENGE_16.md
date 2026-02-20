# Challenge 16: The Data Packer (Archives and Compression)

Welcome to Day 16! As a Data Professional, you rarely move raw datasets around without compressing them first. Space is money, and transfer time is precious.

Today's mission: Compress and extract files and directories using the standard Linux tools.

---

## The Scenarios

1.  **The Linux Standard:**
    Your `log_data/` folder is huge. You need to bundle it into a single file and compress it using the standard Linux format (`.tar.gz`).
    *   **Question:** What command creates this compressed archive?

2.  **The Extraction:**
    You just downloaded `backup_2024.tar.gz` from a server. You need to extract its contents into your current folder.
    *   **Question:** What command unzips and extracts this file?

3.  **The Cross-Platform Way:**
    You have a directory called `financial_reports/` that you need to send to a colleague who uses Windows. You decide to use the `.zip` format.
    *   **Question:** What command creates a zip file of the directory and all its contents?

4.  **The Zip Extractor:**
    Your colleague replies with a file named `updated_reports.zip`. 
    *   **Question:** What command do you use in the terminal to unpack it?

---

## Answer Key & Explanations

### 1. The Linux Standard
**Command:**
```zsh
tar -czf log_archive.tar.gz log_data/
```
> **Explanation:** The `tar` command bundles files. The flags mean: `-c` (create a new archive), `-z` (compress it with gzip), and `-f` (use the following filename `log_archive.tar.gz`).

### 2. The Extraction
**Command:**
```zsh
tar -xzf backup_2024.tar.gz
```
> **Explanation:** Very similar to creation, but we use `-x` (extract) instead of `-c`. It automatically unzips and unpacks the files into your current directory.

### 3. The Cross-Platform Way
**Command:**
```zsh
zip -r reports.zip financial_reports/
```
> **Explanation:** The `zip` command handles `.zip` files. You **must** include the `-r` (recursive) flag when zipping a directory, otherwise it will only zip the folder name without the files inside it!

### 4. The Zip Extractor
**Command:**
```zsh
unzip updated_reports.zip
```
> **Explanation:** `unzip` simply extracts the `.zip` file into the current directory.
