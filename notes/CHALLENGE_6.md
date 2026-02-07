# Challenge 6: The Digital Explorer

Welcome to Level 6! As a Data Professional, your data rarely lives on your local machine. It lives in the cloud.

Today's mission: Verify your connection and fetch remote data.

## The Scenarios

1.  **The "Hello Internet" Check:** Before downloading a huge dataset, you need to know if the server is even online.
    *   **Goal:** Check if `google.com` is reachable.
    *   **Question:** What command (and flag, if needed) sends exactly **3 packets** and then stops automatically? (Hint: Check `man ping`).

2.  **The "Data Scientist" Download:** You need to download a CSV file for your analysis.
    *   **URL:** `https://raw.githubusercontent.com/datasets/population/master/data/population.csv`
    *   **Goal:** Download this file to your current folder, but save it with the name **`world_pop.csv`**.
    *   **Question:** Which `curl` flag lets you rename the file as you download it?

3.  **The Identity Crisis:** You need to find out your computer's **Local IP Address** (the one your router assigned to you).
    *   **Goal:** Run the command that shows network interfaces.
    *   **Question:** On macOS, what is the command? (Hint: It starts with `if...`).

---

## Answer Key

### 1. The "Hello Internet" Check
**Command:** `ping -c 3 google.com`
*   `-c 3`: Count = 3 packets. Without this flag, `ping` runs forever until you press `Ctrl + C`.

### 2. The "Data Scientist" Download
**Command:** `curl -o world_pop.csv https://raw.githubusercontent.com/datasets/population/master/data/population.csv`
*   `-o` (lowercase): Output to a specific filename.
*   If you used `-O` (uppercase), it would save as `population.csv` (the original name).

### 3. The Identity Crisis
**Command:** `ifconfig` (macOS) or `ip a` (Linux)
*   Look for the section `en0:` (usually Wi-Fi on Mac) and the line starting with `inet` (e.g., `inet 192.168.1.15`).
