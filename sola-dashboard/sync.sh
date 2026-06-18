#!/bin/bash
# Sync Sola Dashboard to GitHub Pages
# Called by cron every 5 minutes

REPO_DIR="/Users/shivansh/Documents/Hermes/sola-dashboard"
SOURCE_FILE="/Users/shivansh/Documents/Hermes/Dashboards/Sola Dashboard.html"

# Copy latest dashboard
cp "$SOURCE_FILE" "$REPO_DIR/index.html"

# Check if anything changed
cd "$REPO_DIR"
if ! git diff --quiet HEAD -- index.html; then
    git add index.html
    git commit -m "Auto-update dashboard $(date '+%Y-%m-%d %H:%M')"
    git push origin main
    echo "Dashboard updated and pushed at $(date)"
else
    echo "No changes at $(date)"
fi
