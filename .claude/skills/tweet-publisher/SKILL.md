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
Step 1: Identify the draft(s)
        → Check if there are -en.md and -es.md versions
        → Or a single file with one language

Step 2: Display tweet content(s) for final review
        → Show both versions if both exist
        → Show character count for each

Step 3: ASK which version was published
        → "¿Qué versión publicaste?"
        → Options:
          a) 🇪🇸 Solo español
          b) 🇺🇸 Solo inglés
          c) 🌎 Ambos

Step 4: User confirms

Step 5: Process based on selection:
        → Get timestamp: date "+%Y-%m-%d %H:%M:%S"

        If SPANISH selected:
          → Move -es.md to tweets/published/es/YYYY-MM/YYYY-MM-DD-topic.md
          → Keep -en.md in drafts (for future use)

        If ENGLISH selected:
          → Move -en.md to tweets/published/en/YYYY-MM/YYYY-MM-DD-topic.md
          → Keep -es.md in drafts (for future use)

        If BOTH selected:
          → Move -es.md to tweets/published/es/YYYY-MM/YYYY-MM-DD-topic.md
          → Move -en.md to tweets/published/en/YYYY-MM/YYYY-MM-DD-topic.md

        → Update status to "published" in moved file(s)
        → Add Published datetime to header

Step 6: Confirm completion
        → Show which file(s) were moved
        → Show which file(s) remain in drafts (if any)

Step 7: Show series status if applicable
```

### 3. Review Series

When user asks about a series ("ver serie X", "status de serie X"):

```
→ List all tweets in that series folder
→ Show which are draft vs published (by language)
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
│   │       ├── 01-topic-en.md
│   │       ├── 01-topic-es.md
│   │       ├── 02-topic-en.md
│   │       ├── 02-topic-es.md
│   │       └── ...
│   ├── YYYY-MM-DD-topic-en.md      # Standalone English
│   └── YYYY-MM-DD-topic-es.md      # Standalone Spanish
│
└── published/
    ├── en/                          # English content
    │   └── YYYY-MM/
    │       └── YYYY-MM-DD-topic.md
    └── es/                          # Spanish content
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
## Drafts

### Series: empleo-vs-esclavitud

| # | Topic | 🇺🇸 EN | 🇪🇸 ES |
|---|-------|--------|--------|
| 01 | la-linea | draft | published |
| 02 | las-10pm | draft | draft |
| 03 | lo-que-entregas | draft | draft |

### Standalone

| Topic | 🇺🇸 EN | 🇪🇸 ES | Created |
|-------|--------|--------|---------|
| nuevo-tema | draft | draft | 2026-01-06 |
```

---

## Publishing Confirmation

After successful publish, show:

```
✓ Tweet published

  🇪🇸 Spanish:
     → tweets/published/es/2026-01/2026-01-06-la-linea.md
     → Published: 2026-01-06 12:30:06

  🇺🇸 English:
     → Remains in drafts (not published yet)

  Series "empleo-vs-esclavitud":
     🇪🇸 ES: 1/5 published
     🇺🇸 EN: 0/5 published
```

---

## Language Selection Quick Reference

| User says | Action |
|-----------|--------|
| "solo español" / "only spanish" | Move only -es.md |
| "solo inglés" / "only english" | Move only -en.md |
| "ambos" / "both" | Move both files |
