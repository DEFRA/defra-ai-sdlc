#!/bin/bash

# git-sync.sh - Synchronize local Git repository with remote branches

# Exit on error
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Print with color
print_message() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    print_message "$RED" "Error: Not a git repository"
    exit 1
fi

# Check for uncommitted changes
if ! git diff-index --quiet HEAD --; then
    print_message "$RED" "Error: You have uncommitted changes. Please commit or stash them first."
    exit 1
fi

# Get current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
print_message "$GREEN" "Current branch: $CURRENT_BRANCH"

# Fetch latest from remote and prune
print_message "$YELLOW" "Fetching from remote and pruning..."
git fetch origin --prune

# Switch to main branch if not already on it
if [ "$CURRENT_BRANCH" != "main" ]; then
    print_message "$YELLOW" "Switching to main branch..."
    git checkout main
fi

# Delete all local branches except main
print_message "$YELLOW" "Deleting local branches except main..."
git branch | grep -v '^*' | grep -v '^  main$' | xargs git branch -D 2>/dev/null || true

# Create local branches for each remote branch
print_message "$YELLOW" "Creating local branches from remote..."
git branch -r | grep -v '\->' | sed "s,origin/,," | grep -v '^main$' | while read branch; do
    print_message "$GREEN" "Creating local branch: $branch"
    git checkout -B "$branch" "origin/$branch"
done

# Switch back to original branch
print_message "$YELLOW" "Switching back to $CURRENT_BRANCH..."
git checkout "$CURRENT_BRANCH"

print_message "$GREEN" "Sync complete! Current branches:"
git branch