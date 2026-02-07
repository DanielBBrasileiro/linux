# Challenge 7: The Data Packer (Archives)

Welcome to Level 7! As a Data Professional, you deal with massive datasets. Moving 10,000 CSV files individually is slow; moving one compressed archive is fast.

Today's mission: Create and extract compressed archives using `tar` and `zip`.

## The Scenarios

1.  **Prepare the Shipment (Setup):**
    *   Create a folder named `my_datasets`.
    *   Create 3 empty dummy files inside it: `data1.csv`, `data2.csv`, `data3.csv`. (Hint: use `touch` and brace expansion `{1..3}`).

2.  **The Linux Standard (Tarball):**
    *   **Goal:** Compress the `my_datasets` folder into a single file named `backup.tar.gz`.
    *   **Question:** What is the command to create (`-c`), using gzip (`-z`), specifying the filename (`-f`)?

3.  **The Extraction Test:**
    *   **Goal:** Prove your backup works. Delete the original `my_datasets` folder (or rename it to `my_datasets_old`). Then, **extract** your `backup.tar.gz` to get the folder back.
    *   **Question:** What flag replaces `-c` (create) to mean **extract**?

4.  **The Windows Colleague (Zip):**
    *   **Goal:** Your colleague uses Windows and can't open `.tar.gz`. Create a standard `.zip` file of the restored `my_datasets` folder.
    *   **Question:** Which flag is necessary to ensure `zip` includes all files **inside** the folder?

---

## Answer Key

### 1. Prepare the Shipment
**Commands:**
```zsh
mkdir my_datasets
touch my_datasets/data{1..3}.csv
```

### 2. The Linux Standard (Tarball)
**Command:** `tar -czf backup.tar.gz my_datasets/`
*   `-c`: **Create** a new archive.
*   `-z`: Filter the archive through **gzip** (compress it).
*   `-f`: Output to a **file** (must be the last flag before the filename).

### 3. The Extraction Test
**Commands:**
```zsh
rm -rf my_datasets      # Deletes original
tar -xzf backup.tar.gz  # Extracts backup
ls                      # Checks if folder returned
```
*   `-x`: **Extract** the archive.

### 4. The Windows Colleague (Zip)
**Command:** `zip -r data_for_windows.zip my_datasets/`
*   `-r`: **Recursive**. This is crucial! Without it, `zip` might only save the empty folder and ignore the files inside.
