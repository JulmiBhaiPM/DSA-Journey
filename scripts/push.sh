#!/bin/bash
# ============================================================
# push.sh — Universal one-command push for any solution
# Usage: ./scripts/push.sh "your commit message"
# Example: ./scripts/push.sh "solve: two sum, valid anagram"
# ============================================================

MSG="${1:-"solve: daily problems"}"

git add .
git commit -m "$MSG"
git push

echo ""
echo "✅ All changes pushed to GitHub"
