# Zettelkasten Garden 🪴

A generative knowledge management system (Second Brain) based on Niklas Luhmann's methodology. This system eliminates the "blank page syndrome" by transforming writing into a process of **bottom-up assembly**.

---

## 🎯 The Goal

To move from **passive collection** to **active generation**. Every piece of information that enters the "Garden" is interrogated to find its **Core Insight**, ensuring it becomes a reusable "brick" for future content (blogs, newsletters, tweets) rather than a dead note.

## 🏛️ Methodological Pillars

| Note Type            | Source     | Purpose                                                                | Lifespan                    |
| -------------------- | ---------- | ---------------------------------------------------------------------- | --------------------------- |
| **Fleeting Notes**   | Your Brain | Quick captures of "Aha!" moments or raw thoughts.                      | Short (Process ASAP)        |
| **Literature Notes** | Others     | Summaries/quotes from external sources filtered by your understanding. | Medium (Refined into ideas) |
| **Permanent Notes**  | Synthesis  | Atomic ideas written in your own words. These are the final "assets".  | Long (Infinite)             |

## ⚙️ System Workflow: The 3-Step Refinery

The system is powered by specialized Skills that guide you through a frictionless, step-by-step conversation.

```
Idea → [capture-fragment] → inbox.md → [distill-inbox] → permanent/
         (fast)                          (deep)
```

### 1. `/zettelkasten-capture-fragment` (The Gatekeeper)

**Function:** Fast, low-friction entry point via `inbox.md`.

- **The Mental Hook:** Instead of complex tags, it asks for a **Core Insight** (Does this explain, challenge, or show something?).
- **Output:** Standardized Markdown blocks with unique IDs (`YYYYMMDDHHMM`).
- **Philosophy:** No connections or indexing at this stage — capture fast, process later.

### 2. `/zettelkasten-distill-inbox` (The Refinery)

**Function:** Linear, one-by-one processing of the `inbox.md`.

- **Transformation:** Helps you rewrite raw insights into "Permanent Notes" using your own voice.
- **Connection Discovery:** Consults the INDEX.md to find related notes.
- **Automatic Backlinks:** Propagates bidirectional links to referenced notes.
- **Index Maintenance:** Updates INDEX.md with new concepts and entry points.

### 3. `/zettelkasten-assemble-permanent-notes` (The Architect)

**Function:** Bottom-up content creation designed for non-writers.

- **Narrative Arcs:** Offers a "Menu of Inspiration" (Contrast, Myth-Buster, Bridge, Deep Dive) to structure your post.
- **The Glue:** Proposes logical transitions between your existing notes to create a cohesive draft.

---

## Scalability System

Designed to handle 90,000+ notes without losing connections.

### Concept Index (INDEX.md)

Located at `permanent/INDEX.md`. This is the **Schlagwortregister** (keyword index) inspired by Luhmann's original system.

```markdown
## F

### Fear / Miedo

- [[202601281445]] — Haz lo que te da miedo
- [[202601261815]] — El miedo de los Devs como herramienta de presión
```

**Rules:**

- 2-5 entry-point notes per concept (not exhaustive)
- Concepts in English for consistency
- Alphabetically ordered
- One note can appear under multiple concepts

### Connection Taxonomy

**Vertical (hierarchical):**
| Type | Symbol | Meaning |
|------|--------|---------|
| `Construye sobre (Parent)` | ↑ | This idea is born directly from another |
| `Ejemplo de` | ↑ | This idea is a concrete instance of an abstract concept |

**Horizontal (peers):**
| Type | Symbol | Meaning |
|------|--------|---------|
| `Complementa` | ↔ | Sibling ideas that reinforce each other |
| `Contradice` | ↔ | Sibling ideas in productive tension |

**Note:** No "Child" type needed — Backlinks automatically show which notes reference the current one.

### Automatic Backlinks

Each note has a `## Backlinks` section that is **automatically maintained**.

When note A links to note B, note B's Backlinks section is updated to include A. This ensures **bidirectional navigation**.

---

## File Structure

```text
zettelkasten/
├── inbox.md                 # Temporary landing zone for new ideas
├── tags.md                  # Central registry of all tags
├── permanent/               # Your unique thoughts (The Primary Brain)
│   ├── INDEX.md             # Concept index for scalable search
│   └── [YYYYMMDDHHMM].md    # Individual permanent notes
├── references/              # Bibliographic data and external sources
├── _skills/                 # Skill definitions
├── CLAUDE.md                # Agent instructions
└── README.md                # This file
```

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

- Construye sobre (Parent) [[ID]] — description
- Complementa [[ID]] — description

## Backlinks

- [[ID]] — Title of note that references this one

---

## Original Context

> [Original quote or content]
```

---

## Key Principles

1. **Capture fast, process deep.** Low friction during capture, high quality during distillation.
2. **Challenge, don't just archive.** Ideas are questioned and refined through dialogue.
3. **Connections are first-class citizens.** Every note should link to others.
4. **Bidirectional navigation.** Always know both where an idea goes AND where it comes from.
5. **Index for scale.** The concept index enables finding connections at any scale.
