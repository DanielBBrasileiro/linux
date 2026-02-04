#!/bin/zsh
# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "${YELLOW}[*] Starting studies backup...${NC}"

# Ensure we are in the repository root
# This gets the directory where the script is located, then goes one up
SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR/.." || exit

# Check if there are changes to commit
if [[ -z $(git status -s) ]]; then
    echo "${GREEN}[+] No changes to save. Everything is clean!${NC}"
    exit 0
fi

# Pull updates to avoid conflicts
echo "${YELLOW}[*] Pulling latest changes...${NC}"
git pull --rebase origin HEAD

echo "${YELLOW}[*] Adding files...${NC}"
git add .

echo "${YELLOW}[*] Committing...${NC}"
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"

echo "${YELLOW}[*] Pushing to origin...${NC}"
if git push origin HEAD; then
    echo "${GREEN}[+] Success! Your studies are safe on GitHub.${NC}"
else
    echo "${RED}[!] Error pushing to GitHub. Check your internet or git config.${NC}"
    exit 1
fi
