# Zettelkasten Garden

This is a personal knowledge management system (Second Brain) based on Niklas Luhmann's Zettelkasten methodology, optimized for scalability to 90,000+ notes.

## Project Structure

```
zettelkasten/
├── inbox.md                 # Central entry point for all captures
├── tags.md                  # Central registry of all tags
├── permanent/               # Processed own ideas
│   ├── INDEX.md             # Concept index (Schlagwortregister)
│   └── [YYYYMMDDHHMM].md    # Individual permanent notes
├── references/              # Bibliographic cards
└── CLAUDE.md                # This file
```

## Workflow

```
Idea → [capture-fragment] → inbox.md → [distill-inbox] → permanent/
         (fast, low friction)            (deep processing)
```

1. **Capture** → `/zettelkasten-capture-fragment` → raw ideas to `inbox.md`
2. **Distill** → `/zettelkasten-distill-inbox` → inbox to permanent notes
3. **Assemble** → `/zettelkasten-assemble-permanent-notes` → notes to content

## Available Skills

### `/zettelkasten-capture-fragment`

Fast, low-friction capture of ideas and external sources. Guides through a step-by-step conversation and appends to `inbox.md`. No connections or indexing at this stage — that's for distillation.

### `/zettelkasten-distill-inbox`

Processes entries from `inbox.md` one by one, transforming them into Permanent Notes. Includes:

- Index consultation for finding connections
- Automatic backlink propagation
- Automatic index updates

### `/zettelkasten-assemble-permanent-notes`

Bottom-up content creation. Researches and assembles permanent notes into structured drafts (blogs, newsletters, threads).

---

## Scalability System

### Concept Index (INDEX.md)

Located at `permanent/INDEX.md`. This is the **Schlagwortregister** (keyword index) inspired by Luhmann's original system.

**Purpose:** Find connections without scanning all notes.

**Structure:**

```markdown
## A

### Authenticity

- [[202601231045]] — Reclamando humanidad en la era de la IA
- [[202601240807]] — El Éxito en tus propios términos

### AI Era

- [[202601231045]] — Reclamando humanidad en la era de la IA
```

**Rules:**

- 2-5 entry-point notes per concept (not exhaustive)
- Concepts in English for consistency
- Alphabetically ordered
- One note can appear under multiple concepts

### Connection Taxonomy

Connections express relationships between notes. There are two categories:

**Vertical (hierarchical):**
| Type | Symbol | Meaning |
|------|--------|---------|
| `Construye sobre (Parent)` | ↑ | This idea is born directly from another (biological parent) |
| `Ejemplo de` | ↑ | This idea is a concrete instance of an abstract concept |

**Horizontal (peers):**
| Type | Symbol | Meaning |
|------|--------|---------|
| `Complementa` | ↔ | Sibling ideas that reinforce each other |
| `Contradice` | ↔ | Sibling ideas in productive tension |

**Note:** There's no "Child" type — Backlinks automatically show which notes reference the current one.

### Backlinks

Each note has a `## Backlinks` section that is **automatically maintained** by the distill-inbox skill.

When note A links to note B in its Connections, note B's Backlinks section is updated to include A **with the relationship type**.

This ensures **bidirectional navigation** — you can always see both:

- Where this idea connects TO (Connections)
- Where this idea is referenced FROM (Backlinks)

---

## Permanent Note Format

```markdown
# [Conceptual Title]

- **ID:** [YYYYMMDDHHMM]
- **Date:** [YYYY-MM-DD]
- **Tags:** [#tag1 #tag2]
- **Source:** [[Reference_Link]]

## Idea

[The idea in your own words - 2-3 sentences]

## Connections

- Construye sobre (Parent) [[ID]] — description (if this idea derives from another)
- Complementa [[ID]] — description
- Contradice [[ID]] — description

## Backlinks

- [Relationship type] [[ID]] — Title of note that references this one

---

## Original Context

> [Original quote or content]
```

---

## Interaction Philosophy

- **Challenge, don't just capture.** Do not be afraid to contradict or critique the user's points. Tell them what they need to hear, NOT what they want to hear. Challenge assumptions while showing genuine curiosity and care.
- If an idea contains factual errors, misused terms, or flawed logic → point it out respectfully and explain the correction.
- The goal is learning through dialogue, not just archiving raw thoughts.

## Important Rules

- One question at a time to reduce friction.
- Tags: always reference `tags.md` for existing tags; add new ones there if needed.
- Connections: always consult `permanent/INDEX.md` first when searching for related notes.
- Backlinks: automatically propagate when creating connections.
- Index: automatically update when creating new notes.

_IMPORTANT: The user is a Spanish speaker, so ask all questions in Spanish, but document everything in English._
