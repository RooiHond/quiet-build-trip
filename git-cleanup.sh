#!/bin/bash

echo "🔒 Cleaning up Git config and credentials..."

# Unset global Git identity
git config --global --unset user.name
git config --global --unset user.email
git config --global --unset github.user

# Optionally remove the entire global config file
rm -v ~/.gitconfig

# Remove cached Git credentials (if used)
if command -v git-credential-osxkeychain &> /dev/null; then
  echo "🧹 Removing saved GitHub credentials from macOS Keychain..."
  security delete-internet-password -s github.com 2>/dev/null
fi

# Remove SSH keys (optional — only if this machine won't need them 
anymore)
echo "⚠️  WARNING: This will delete your SSH keys if they exist. Ctrl+C to 
cancel."
read -p "Do you want to remove SSH keys? (y/N): " confirm
if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
  rm -v ~/.ssh/id_rsa ~/.ssh/id_rsa.pub 2>/dev/null
fi

echo "✅ Git cleanup complete."

