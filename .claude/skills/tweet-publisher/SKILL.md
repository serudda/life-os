---
name: tweet-publisher
description: Manages tweet drafts and publishing workflow. Use when listing drafts, publishing tweets, reviewing series, or organizing tweet files. Does NOT create content (use tweet-creator for that).
---

# Tweet Publisher

## Purpose

Manage the operational workflow: list drafts, publish tweets, organize files, track series.

---

## Workflow Commands

### 1. List Drafts

When user asks "ver drafts", "mis tweets pendientes", "show drafts":

```
→ List all files in tweets/drafts/ (including series subfolders)
→ Show: title, language, created date
→ Group by series if applicable
→ Show total count
```

### 2. Publish Tweet

When user says "publish tweet [name]" or "publicar tweet [name]":

```
Step 1: Read the draft file
Step 2: Display tweet content for final review
Step 3: Show character count
Step 4: Ask user to confirm they've posted to Twitter
Step 5: Once confirmed:
        → Get timestamp: date "+%Y-%m-%d %H:%M:%S"
        → Create file in tweets/published/YYYY-MM/YYYY-MM-DD-topic.md
        → Update status to "published"
        → Add Published datetime to header
        → Delete original draft file
Step 6: Confirm completion
Step 7: Show series status if applicable
```

### 3. Review Series

When user asks about a series ("ver serie X", "status de serie X"):

```
→ List all tweets in that series folder
→ Show which are draft vs published
→ Show publishing order
→ Suggest next tweet to publish
```

### 4. Move/Organize

When user wants to reorganize tweets:

```
→ Move between standalone and series
→ Rename files
→ Create new series folders
```

---

## File Structure

```
tweets/
├── drafts/
│   ├── series/
│   │   └── [series-name]/
│   │       ├── 01-topic.md
│   │       ├── 02-topic.md
│   │       └── ...
│   └── YYYY-MM-DD-topic.md      # Standalone
│
└── published/
    └── YYYY-MM/
        └── YYYY-MM-DD-topic.md
```

---

## File Format

### Draft

```markdown
# [Title]

**Status**: draft
**Language**: Spanish | English
**Created**: YYYY-MM-DD

---

[Tweet content]
```

### Published

```markdown
# [Title]

**Status**: published
**Language**: Spanish | English
**Created**: YYYY-MM-DD
**Published**: YYYY-MM-DD HH:MM:SS

---

[Tweet content]
```

---

## Status Display Format

When showing drafts or series:

```
## Drafts (5 total)

### Series: empleo-vs-esclavitud (4 drafts)
  02-las-10pm.md        | Spanish | 2026-01-06
  03-lo-que-entregas.md | Spanish | 2026-01-06
  04-propiedad.md       | Spanish | 2026-01-06
  05-esclavo-voluntario.md | Spanish | 2026-01-06

### Standalone (1 draft)
  2026-01-06-otro-tema.md | English | 2026-01-06
```

---

## Publishing Confirmation

After successful publish, show:

```
✓ Tweet published

  File: tweets/published/2026-01/2026-01-06-la-linea.md
  Time: 2026-01-06 12:30:06

  Series "empleo-vs-esclavitud": 1/5 published
  Next: 02-las-10pm.md
```
