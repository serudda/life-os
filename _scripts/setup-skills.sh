#!/bin/bash

# 1. Define destination path
SKILLS_DIR=".claude/skills"

# 2. Ensure the skills root folder exists
mkdir -p "$SKILLS_DIR"

# 3. DO NOT DELETE ANYTHING (Line commented for safety)
# rm -rf "$SKILLS_DIR"/*

echo "🚀 Mapping Skills Structure (Folder + SKILL.md)..."

# 4. Search for SKILL.md files in your vaults
find . -type d \( -name ".claude" -o -name "scripts" -o -name "node_modules" \) -prune -o -name "SKILL.md" -print | while read -r path; do
    
    # Extract the skill ID (e.g., save-word)
    skill_id=$(basename "$(dirname "$path")")
    
    # Extract the vault name (e.g., vocabulary)
    baul_name=$(echo "$path" | cut -d'/' -f2)
    
    # Destination folder name (e.g., vocabulary-save-word)
    folder_name="${baul_name}-${skill_id}"
    
    # Create the subfolder inside .claude/skills/
    target_folder="$SKILLS_DIR/$folder_name"
    mkdir -p "$target_folder"
    
    # Clean the path for the relative link
    clean_path=$(echo "$path" | sed 's|^\./||')
    
    # Create the RELATIVE symbolic link
    # IMPORTANT: Since we are inside a subfolder (.claude/skills/skill-name/)
    # we need to go up THREE levels (../../../) to reach the repo root.
    ln -sf "../../../$clean_path" "$target_folder/SKILL.md"
    
    echo "✅ Structure ready: $folder_name/SKILL.md"
done

echo "✨ Portals configured correctly."