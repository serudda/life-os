# Writing Vault

Long-form content: newsletters, blog posts, essays.

## Identity

Always read @../IDENTITY.md first. Sergio writes as "the uncle who tells it straight"—caring but unfiltered.

---

## Folder Structure

Each post has its own folder with all related files:

```
writing/
├── 2026-01-09-pocket-writer/
│   ├── source.md        # (optional) External resource that inspired the post
│   ├── interview.md     # Structured Q&A from content-interview
│   ├── draft.md         # Work in progress (Spanish)
│   ├── ready-es.md      # Final Spanish version
│   └── ready-en.md      # Final English version
│
├── 2026-01-09-time-camera/
│   └── draft.md         # (in progress)
│
└── CLAUDE.md
```

### Naming Convention

- **Folder**: `YYYY-MM-DD-slug` (date + English slug)
- **Slug always in English** (e.g., `pocket-writer` not `escritor-de-bolsillo`)
- **Files inside**: Fixed names (`source.md`, `interview.md`, `draft.md`, `ready-es.md`, `ready-en.md`)

### Post Status (by file existence)

| Files Present | Status |
|--------------|--------|
| Only `source.md` | Captured, pending interview |
| `interview.md` | Interviewed, pending draft |
| `draft.md` | In editing |
| `ready-es.md` | Ready to publish (Spanish) |
| `ready-en.md` | Ready in both languages |

---

## The Content Pipeline

```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                                                                                     │
│  [RESOURCE] ──► SOURCE-CAPTURE ──► CONTENT-INTERVIEW ──► POST-BUILDER              │
│      │               │                    │                    │                   │
│      ▼               ▼                    ▼                    ▼                   │
│  Tweet/Post     source.md           interview.md           draft.md               │
│  Article                                                                           │
│                                                                                     │
│  ──► MANUAL EDIT ──► GRAMMAR-CHECK ──► EN-TRANSLATOR ──► PUBLISHED                 │
│           │               │                  │                                      │
│           ▼               ▼                  ▼                                      │
│       draft.md        draft.md         ready-es.md                                 │
│      (edited)        (corrected)       ready-en.md                                 │
│                                                                                     │
└─────────────────────────────────────────────────────────────────────────────────────┘
```

### Phase 0: Source Capture (Optional)
**Skill**: `source-capture`
**Input**: Tweet, article, post, screenshot
**Output**: `source.md` in post folder

Captures external content that inspires a post. Extracts raw content, key points, and punchlines.

### Phase 1: Content Interview
**Skill**: `content-interview`
**Input**: Raw idea OR existing `source.md`
**Output**: `interview.md` in post folder

Extracts central idea, stories, emotional peaks, and golden quotes through Q&A.

### Phase 2: Post Builder
**Skill**: `post-builder`
**Input**: `interview.md` + optional `source.md`
**Output**: `draft.md` in post folder

Transforms interview into structured draft using Atomic Structure framework.

### Phase 3: Manual Edit
**Process**: Edit `draft.md` directly
**No skill needed**: Refine, extend, adjust by hand

### Phase 4: Grammar Check
**Skill**: `grammar-check`
**Input**: `draft.md`
**Output**: Corrected `draft.md` (same file)

Fixes spelling, punctuation, syntax WITHOUT changing voice or structure.

### Phase 5: English Translation
**Skill**: `en-translator`
**Input**: `draft.md`
**Output**: `ready-es.md` + `ready-en.md` in post folder

Creates final versions in both languages. NOT literal translation—cultural adaptation.

---

## Core Principles (Never Change)

1. **Every paragraph earns its place** - No filler
2. **Real experience > generic advice** - 15+ years of stories
3. **Challenge what everyone accepts** - Question normalized behaviors
4. **Specifics over abstractions** - Names, numbers, situations
5. **His ideas, organized by AI** - Extract, never generate

---

## Content Themes (From Expertise)

- Career growth without selling your soul
- The "modern slavery" of employment culture
- Indie hacking and building products
- UI/UX wisdom from pattern recognition
- Salary negotiation and knowing your worth
- Adapting to AI without losing yourself

---

## Voice by Language

**Spanish:**
- Warmer, conversational
- Natural interjections: "Mira," "Te lo digo claro,"
- Still dense, but with warmth

**English:**
- Tighter, aphoristic
- Naval/PG influence
- Clarity over warmth

---

## What NOT To Do

- No fluff paragraphs
- No generic advice everyone gives
- No sugarcoating to be likeable
- No "10 tips" listicles without substance
- No AI-generated ideas—only AI-organized ideas
