#!/bin/bash

# Source file at the repo root
SOURCE_FILE="CORE_INSTRUCTIONS.md"

# Verify the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "❌ $SOURCE_FILE not found at the repo root."
    exit 1
fi

echo "🚀 Linking $SOURCE_FILE into each vault..."

# Find vaults (first-level directories) that contain a CLAUDE.md
for vault in */; do
    vault_name="${vault%/}"

    # Skip hidden dirs and _scripts
    [[ "$vault_name" == .* || "$vault_name" == _* ]] && continue

    # Only process vaults that already have a CLAUDE.md
    if [ -f "$vault_name/CLAUDE.md" ]; then

        target="$vault_name/$SOURCE_FILE"

        # Create (or replace) the relative symbolic link
        ln -sf "../$SOURCE_FILE" "$target"

        echo "✅ Linked: $target"
    fi
done

echo "✨ Core instructions linked correctly."
