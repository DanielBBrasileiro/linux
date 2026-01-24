#!/bin/zsh
echo "Starting studies backup..."
git add .
git commit -m "Update: $(date)"
git push origin HEAD
echo "All set and pushed!"
