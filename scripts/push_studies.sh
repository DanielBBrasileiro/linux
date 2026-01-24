#!/bin/zsh
echo "Starting studies backup..."
git add .
git commit -m "Update: $(date)"
git push origin main
echo "All set and pushed!"
