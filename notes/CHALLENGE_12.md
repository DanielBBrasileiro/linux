# Challenge 12: The App Store (Package Managers)

Welcome to Day 12! Forget downloading `.dmg` or `.exe` files. We use package managers.

Today's mission: Install, update, and remove software from the terminal.

## The Scenarios

1.  **The New Toy:**
    *   **Goal:** You need a powerful process viewer called `htop`.
    *   **Question:** What command installs it using Homebrew (macOS)? (If you are on Linux, use `apt`).

2.  **The Upgrade:**
    *   **Goal:** You haven't updated your installed tools in a month. You want the latest versions of EVERYTHING.
    *   **Question:** What command upgrades all your installed packages?

3.  **The Search:**
    *   **Goal:** You need a database, but you aren't sure if it's called `postgres`, `postgresql`, or `pg-sql`.
    *   **Question:** How do you search for it?

4.  **The Cleanup:**
    *   **Goal:** You accepted a job using Python, so you no longer need `node` (Node.js) on your machine (just kidding).
    *   **Question:** How do you uninstall a package?

---

## Answer Key

### 1. The New Toy
**Command:** `brew install htop` (macOS) or `sudo apt install htop` (Linux).

### 2. The Upgrade
**Command:** `brew upgrade` (macOS) or `sudo apt upgrade` (Linux).
*   **Note:** On Linux, always run `sudo apt update` first to refresh the list!

### 3. The Search
**Command:** `brew search postgres` (macOS) or `apt search postgres` (Linux).

### 4. The Cleanup
**Command:** `brew uninstall node` (macOS) or `sudo apt remove nodejs` (Linux).
