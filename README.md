# Life OS - Personal Operating System

This project organizes different areas of my life into independent "vaults", each with its own context and purpose.

## Active Vaults

- **brand/** - Foundational material (story, core beliefs)
- **prompts/** - Capture, test, and curate prompts from any source
- **vocabulary/** - Words and concepts with informal definitions, sorted alphabetically

## Deprecated Vaults

- **tweets/** - Thoughts and posts for Twitter/X
- **writing/** - Content creation for newsletter and blog

## General Conventions

- Each vault has its own CLAUDE.md with specific instructions

## Available Skills

Skills are located in `.claude/skills/` and activate automatically based on context.

## Setting Up Skills (Symbolic Links)

### Why Symbolic Links?

Claude Code requires all skills to live in a flat structure inside `.claude/skills/`. However, managing all skills in a single folder quickly becomes chaotic—it's hard to know which skill belongs to which vault.

The solution: **keep skills organized within their respective vaults**, and use symbolic links to satisfy Claude Code's requirement. This way:

- Each vault owns and maintains its own skills (e.g., `vocabulary/_skills/save-word/`)
- You edit skills directly inside each vault
- The symlinks in `.claude/skills/` automatically point to the real files
- Claude Code finds and activates the skills as expected

### How the Script Works

1. Searches for all `SKILL.md` files inside your vaults
2. Creates a folder in `.claude/skills/` with the naming convention `{vault}-{skill-id}`
3. Creates a symbolic link pointing back to the original `SKILL.md`

### Usage

```bash
# 1. Navigate to the project root
cd /Users/serudda/Documents/Projects/life-os

# 2. Make the script executable (only needed once)
chmod +x _scripts/setup-skills.sh

# 3. Run the script
./_scripts/setup-skills.sh
```

### When to Run

- After creating a new skill in any vault
- After cloning the repo on a new machine
- After renaming or moving skill folders

### Example Output

```
🚀 Mapping Skills Structure (Folder + SKILL.md)...
✅ Structure ready: vocabulary-save-word/SKILL.md
✅ Structure ready: prompts-prompt-generator/SKILL.md
✨ Portals configured correctly.
```
