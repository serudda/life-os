# Writing Vault

Long-form content: newsletters, blog posts, essays.

## Identity

Always read @../IDENTITY.md first. Sergio writes as "the uncle who tells it straight"—caring but unfiltered.

---

## The Content Pipeline

Creating a post follows a clear pipeline. Each phase has its own skill:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│   IDEA ──► CONTENT-INTERVIEW ──► POST-BUILDER ──► MANUAL EDIT ──► EN-TRANSLATOR ──► PUBLISHED
│                  │                      │              │                      │           │
│                  ▼                      ▼              ▼                      ▼           │
│            Interview Doc           Draft V1       Final Draft        Spanish + English   │
│          (Q&A structured)      (1_drafts/)       (1_drafts/)            (2_ready/)       │
│                                                                                           │
└───────────────────────────────────────────────────────────────────────────────────────────┘
```

### Phase 1: Content Interview
**Skill**: `content-interview`
**Input**: Raw idea, fragment, notes, anything
**Output**: Structured Q&A document in `writing/0_interviews/`

The interview extracts:
- Central idea in one sentence
- Target audience
- Personal story that anchors it
- Why it matters emotionally
- Key points and raw quotes

### Phase 2: Post Builder
**Skill**: `post-builder`
**Input**: Interview document + IDENTITY.md
**Output**: Draft V1 in `writing/1_drafts/`

Transforms the interview material into a structured post using the Atomic Structure framework. Delivers complete drafts for short posts, builds section-by-section for longer ones.

### Phase 3: Manual Edit
**Process**: You manually edit the draft in `1_drafts/`
**No skill needed**: This is where you refine, extend, or adjust the content by hand

### Phase 4: English Translation
**Skill**: `en-translator`
**Input**: Edited draft from `1_drafts/`
**Output**: Spanish + English versions in `2_ready/`

Translates the Spanish draft to English while preserving essence, punchline, and voice. NOT a literal translation—adapts culturally. Moves Spanish version to `2_ready/` and creates English version with `-en` suffix.

### Phase 5: Formatting (Optional)
**Skill**: `newsletter-formatter`
**Input**: Draft needing polish
**Output**: Final formatted version

For when you have content that just needs final touches.

---

## Folder Structure

```
writing/
├── 0_interviews/     # Output from content-interview (Q&A documents)
├── 1_drafts/         # Work in progress posts (Spanish, manually edited)
├── 2_ready/          # Final versions ready to publish (Spanish + English)
├── 3_published/      # Published posts
└── CLAUDE.md         # This file
```

The numeric prefixes show the content pipeline flow visually.

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
