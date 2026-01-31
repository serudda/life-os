# Prompts Vault

Vault for capturing, testing, and curating prompts from any source.

## Purpose

Centralize prompts found or created, test them with real use cases, and decide whether they earn a permanent spot or get archived.

## Structure

```
prompts/
├── CLAUDE.md           # This file
├── 1_testing/          # Prompts under active testing
├── 2_approved/         # Prompts that passed testing
└── 3_archived/         # Discarded prompts (kept for reference)
```

## Workflow

1. **Capture & Test** — Find a prompt, create a file directly in `1_testing/YYYY-MM-DD-slug.md`, paste the prompt, and start testing it in any tool
2. **Approve** — If it works, manually move the file to `2_approved/`
3. **Archive** — If it doesn't work, manually move the file to `3_archived/`

This is a manual workflow. The user decides when a prompt moves between stages.

## File Format

Each prompt file uses a YAML frontmatter block followed by the prompt content:

```markdown
---

Source: URL or where you found it
Author: Who created it

---

(the prompt content)
```

## Conventions

- Slugs always in English: `2026-01-30-code-reviewer.md`
- One file per prompt
- Never delete prompts — if they don't work, move to `3_archived/`
