#!/bin/bash

# Script to link an Obsidian vault to Quartz content directory
# Works on macOS and Linux

echo "🔗 Obsidian Vault Linking Script"
echo "================================="
echo ""

# Get the current script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
QUARTZ_CONTENT_PATH="$SCRIPT_DIR/content/Recipes"

# Prompt for Obsidian vault path
read -p "Enter the full path to your Obsidian vault's recipe folder: " OBSIDIAN_VAULT_PATH

# Expand ~ to home directory if present
OBSIDIAN_VAULT_PATH="${OBSIDIAN_VAULT_PATH/#\~/$HOME}"

# Check if the path exists
if [ ! -d "$OBSIDIAN_VAULT_PATH" ]; then
    echo "❌ Error: Directory '$OBSIDIAN_VAULT_PATH' does not exist"
    exit 1
fi

echo ""
echo "📁 Source: $OBSIDIAN_VAULT_PATH"
echo "📁 Target: $QUARTZ_CONTENT_PATH"
echo ""

# Ask for confirmation
read -p "Do you want to create a symbolic link? (y/n): " CONFIRM

if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
    echo "❌ Cancelled"
    exit 0
fi

# Remove existing Recipes directory if it exists
if [ -d "$QUARTZ_CONTENT_PATH" ]; then
    echo "⚠️  Removing existing Recipes directory..."
    rm -rf "$QUARTZ_CONTENT_PATH"
fi

# Create symbolic link
ln -s "$OBSIDIAN_VAULT_PATH" "$QUARTZ_CONTENT_PATH"

if [ $? -eq 0 ]; then
    echo "✅ Obsidian vault successfully linked to Quartz content folder!"
    echo ""
    echo "Next steps:"
    echo "1. Add recipes to your Obsidian vault"
    echo "2. Install the Obsidian Git plugin for auto-sync"
    echo "3. Run 'npx quartz build --serve' to preview locally"
else
    echo "❌ Failed to create symbolic link"
    exit 1
fi
