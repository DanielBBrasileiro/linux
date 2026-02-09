# Challenge 9: The Time Traveler (Scheduling)

Welcome to Level 9! As a Data Engineer, manual execution is forbidden. Everything must be automated.

Today's mission: Schedule scripts to run while you sleep.

## The Scenarios

1.  **The Morning Check:**
    *   **Goal:** You have a script `/home/daniel/check_db.sh`.
    *   **Question:** Write the cron line to run this script **every day at 6:00 AM**.

2.  **The Weekly Backup:**
    *   **Goal:** You want to run `/home/daniel/backup_full.sh`.
    *   **Constraint:** It must run ONLY on **Fridays at 11:30 PM** (23:30).
    *   **Question:** What is the cron syntax for this?

3.  **The Frequent Monitor:**
    *   **Goal:** Your monitoring script `/home/daniel/monitor.sh` is critical. It must run every **5 minutes**.
    *   **Question:** What is the syntax? (Hint: Use the division operator `/`).

4.  **The Local Setup:**
    *   **Goal:** Check if you have any cron jobs scheduled right now on your machine.
    *   **Question:** What command lists your current cron table?

---

## Answer Key

### 1. The Morning Check
**Line:** `0 6 * * * /home/daniel/check_db.sh`
*   `0`: Minute (0)
*   `6`: Hour (6 AM)
*   `* * *`: Every day, every month.

### 2. The Weekly Backup
**Line:** `30 23 * * 5 /home/daniel/backup_full.sh`
*   `30`: Minute (30)
*   `23`: Hour (11 PM)
*   `* *`: Every day of month, every month.
*   `5`: Day of Week (Friday). Note: Sunday is usually 0 or 7.

### 3. The Frequent Monitor
**Line:** `*/5 * * * * /home/daniel/monitor.sh`
*   `*/5`: Every 5th minute (0, 5, 10, 15...).

### 4. The Local Setup
**Command:** `crontab -l`
*   If you have never set one up, it might say "no crontab for user".
