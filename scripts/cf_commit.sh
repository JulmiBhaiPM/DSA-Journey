#!/bin/bash
# ============================================================
# cf_commit.sh — Codeforces quick commit helper
# Usage: ./scripts/cf_commit.sh <rating> <problem_id> <name>
# Example: ./scripts/cf_commit.sh 800 1A "theatre square"
# ============================================================

set -e

RATING="$1"
PROBLEM_ID="$2"
PROBLEM_NAME="$3"

# Validate inputs
if [ -z "$RATING" ] || [ -z "$PROBLEM_ID" ] || [ -z "$PROBLEM_NAME" ]; then
  echo "Usage: ./scripts/cf_commit.sh <rating> <problem_id> <problem_name>"
  echo "Example: ./scripts/cf_commit.sh 800 1A 'theatre square'"
  exit 1
fi

# Sanitize name: lowercase, replace spaces with underscores
SAFE_NAME=$(echo "$PROBLEM_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '_')
FILENAME="${PROBLEM_ID}_${SAFE_NAME}.cpp"
FOLDER="competitive-programming/${RATING}"
FILEPATH="${FOLDER}/${FILENAME}"

# Make sure folder exists
mkdir -p "$FOLDER"

# Check the file exists (you should have already saved it there)
if [ ! -f "$FILEPATH" ]; then
  echo "File not found: $FILEPATH"
  echo "Save your solution there first, then run this script."
  exit 1
fi

# Git add, commit, push
git add "$FILEPATH"
git commit -m "solve(cf-${RATING}): ${PROBLEM_ID} ${PROBLEM_NAME}"
git push

echo ""
echo "✅ Pushed: $FILEPATH"
echo "🔗 Commit live on GitHub"
