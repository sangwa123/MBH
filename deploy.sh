#!/bin/bash

# Quick deploy script for Netlify
# This script helps you commit and push changes to trigger automatic Netlify deployment

echo "🚀 Preparing to deploy to Netlify..."

# Check if there are changes
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ No changes to commit"
    exit 0
fi

# Show status
echo "📋 Current changes:"
git status --short

# Ask for commit message
read -p "💬 Enter commit message (or press Enter for default): " commit_msg

if [ -z "$commit_msg" ]; then
    commit_msg="Update portfolio"
fi

# Stage all changes
echo "📦 Staging changes..."
git add .

# Commit
echo "💾 Committing changes..."
git commit -m "$commit_msg"

# Push
echo "⬆️  Pushing to GitHub..."
git push

echo "✅ Done! Netlify will automatically deploy your changes in 1-2 minutes."
echo "🌐 Check your deployment at: https://bonfilsportfolio.netlify.app/"
