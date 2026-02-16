---
name: distill-inbox
description: Process entries from inbox.md one by one to transform them into Permanent Notes. It handles file creation in the Zettelkasten folder, moves literature references, and cleans up the inbox. Use when user says "process inbox", "distill my notes", "organize inbox".
---

# Zettelkasten Distillation Skill

## Context

This skill is the "refinery" of the system. It takes raw captures (Fleeting/Literature) and helps the user synthesize them into Permanent Notes. A Permanent Note is an idea written in the user's own words, designed to be understood by their "future self" without needing the original context.

## Flow

### Step 1: Scan and Select

The agent reads `inbox.md`.

- If empty: Notify the user and terminate.
- If not empty: Identify the **first** note in the file.
  **Action:** Display the note's content and Core Insight to the user.
  **Ask:** "Ready to distill this note? (Yes/Skip)"

### Step 2: Elaborate (Permanent Note Creation)

A Permanent Note must be written in the user's own words.
**Ask:** "**Based on the Core Insight, how would you explain this idea to your future self in 2-3 sentences?**"
**Goal:** Transform "someone else's idea" into "your own thought".
**Rules:**

- Preserve the user's elaboration in the original language they used. Do NOT translate it.

### Step 3: Validate & Polish Draft

**Validation Checkpoint:** Before polishing, critically review the user's elaboration:

- Does it contain factual errors or misused terms?
- Is the logic sound, or are there flawed assumptions?
- Could the idea be misunderstood by their "future self"?

**If issues are found:** Point them out respectfully. Explain the correction and ask if the user wants to revise their elaboration.

**Action:** Once validated, clean up the user's elaboration:

- Fix grammar and spelling errors
- Remove redundancies
- Add proper punctuation
- Improve coherence between sentences

**Rules:**

- Preserve the user's tone, voice, and original language. Do NOT rephrase or transform the idea.
- **Challenge, don't just capture.** Do not be afraid to contradict or critique the user's points. Tell them what they need to hear, NOT what they want to hear. Challenge assumptions while showing genuine curiosity and care.
- If an idea contains factual errors, misused terms, or flawed logic → point it out respectfully and explain the correction.
- The goal is learning through dialogue, not just archiving raw thoughts.

If you challenge the user to make some change that would improve the idea he wants to convey,

**Ask: "Do you want us to make changes to the permanent note based on what we just discussed?"**

If -> Yes -> Add or change coherently and in a structured way, the new insight that emerged from the discussion. -> Skip to question 2

If -> No -> Skip to question 2

Question 2:
**Ask:** "**Here's a polished version of your idea. Does it still capture what you meant?**"
[Show polished version]

### Step 4: Conceptual Titling

Permanent notes need a title that describes the _concept_, not the source.
**Ask:** "**What is a clear, conceptual title for this Permanent Note?** (e.g., 'The Hidden Cost of Habits' instead of 'Brian Tracy Quote')"

### Step 5: Internal Connections (The Zettelkasten Link)

#### 5.1 Index Consultation

1. Read `/zettelkasten/permanent/INDEX.md`
2. Identify 2-4 relevant concepts based on the note's content
3. Extract entry-point notes from those concepts

#### 5.2 Semantic Search (Backup)

If the Index doesn't yield enough candidates:

- Search `/zettelkasten/permanent/` for notes with overlapping tags
- Look for notes from the same Source

#### 5.3 Present Candidates

**Action:** Show ALL candidates, grouped by discovery source:

```
**Desde INDEX (conceptos relacionados):**
- [[ID]] — Título de la nota
- [[ID]] — Título de la nota

**Desde Tags compartidos (#tag1, #tag2):**
- [[ID]] — Título de la nota

**Desde mismo Source (Autor/Libro):**
- [[ID]] — Título de la nota
```

**Rules:**

- Show ALL candidates found, not a fixed number
- Group by discovery source for clarity
- If a note appears in multiple groups, show it only in the highest-priority group (INDEX > Tags > Source)
- If no candidates found in a group, omit that group header

**Ask:** "**¿Con cuáles de estas notas conecta? Puedes elegir varias. Indica el tipo de relación para cada una.**"

**Relationship types:**

_Vertical (hierarchical):_

- `Construye sobre (Parent)` — (↑) This idea is born directly from another (biological parent)
- `Ejemplo de` — (↑) This idea is a concrete instance of an abstract concept (conceptual parent)

_Horizontal (peers):_

- `Complementa` — (↔) Sibling ideas that reinforce each other
- `Contradice` — (↔) Sibling ideas in productive tension

**Note:** You don't need a "Child" type — Backlinks automatically show which notes reference the current one (children).

#### 5.4 Backlink Propagation

**Action (automatic):** For each note linked in Connections:

1. Open the target note file
2. Find or create the `## Backlinks` section (before the `---` separator)
3. Add entry including the relationship type: `- [Relationship type] [[NEW_ID]] — [Title of new note]`
4. Save the target note

**Example:** If the new note says `- Complementa [[202601221045]] — description`, then in note 202601221045 add:
```
## Backlinks
- Complementa [[NEW_ID]] — Title of new note
```

**Rules:**

- Always include the relationship type from the source note's Connections
- If target note has no `## Backlinks` section, create it before `---`
- Sort backlinks by ID (chronological order)
- Do NOT duplicate existing backlinks

#### 5.5 Index Update

**Action (automatic):** Update `/zettelkasten/permanent/INDEX.md`:

1. Identify 1-3 concepts this note should be indexed under
2. Add the note as entry point under each concept (if concept has <5 notes)
3. If concept doesn't exist, add it alphabetically under the correct letter
4. Update the `_Last updated_` date at the bottom

### Step 6: Metadata & Tags Refinement

1. Read `tags.md` to get all existing tags.
2. Suggest refined tags from the existing list (remove #inbox, add more specific ones if needed).
3. Show the remaining available tags grouped by category.
4. **Ask:** "**Are these tags correct for the permanent archive, or would you like to pick others from the list or add a new one?**"
5. If the user creates a new tag → add it to `tags.md` under the appropriate category (alphabetically sorted).

### Step 7: File Generation & Inbox Cleanup

**Action:**

1. **Create Permanent Note:** Save to `zettelkasten/permanent/[ID].md` using the template below.
2. **Handle Literature (if applicable):** If it's a Literature Note, create/update a file in `zettelkasten/references/[Source_Name].md` with the bibliographic data and a link to the new Permanent Note.
3. **Delete from Inbox:** Remove ONLY this note's block from `inbox.md`.

### Step 8: Continuity Check

**Action:** Confirm the note has been archived.
**Ask:** "**Note processed and removed from Inbox. Would you like to process the next one?**"

## Output Format (Permanent Note)

```markdown
# [Conceptual Title]

- **ID:** [YYYYMMDDHHMM]
- **Date:** [Current Date]
- **Tags:** [Refined Tags]
- **Source:** [[Reference_Link]]

## Idea

[Polished elaboration from Step 3]

## Connections

- [Relationship type] [[ID]] — [description]

## Backlinks

_(Auto-maintained section - do not add manually on creation)_

---

## Original Context

> [Original Complete content from "### Content" section]
```

**Notes:**

- Parent relationships are expressed in Connections using the `Construye sobre (Parent)` type (e.g., `- Construye sobre (Parent) [[ID]] — description`)
- The `Backlinks` section starts empty on new notes. It gets populated automatically when OTHER notes link to this one.
