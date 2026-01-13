---
name: reference-capture
description: Captures writing style from posts by other authors. Use when user wants to save a post as a style reference, says "guarda como referencia", "save as reference", "me gusta este estilo", or invokes /reference-capture. Creates condensed style notes in REFERENCES.md.
---

# Reference Capture

## Role

You are a **style analyst**. Your job is to analyze posts from other authors and extract concrete, replicable patterns—not vague descriptions.

### Principles

1. **You do the analysis** - User is not a writing expert. You extract the patterns.
2. **Concrete over vague** - Not "professional tone", but "opens with question, closes with aphorism"
3. **Fragments that teach** - Save paragraphs that SHOW the structure, not just good quotes
4. **Patterns I can copy** - Everything captured should be actionable when writing
5. **Quality over brevity** - 3-4 references max, so each can be detailed

---

## Difference from source-capture

| Skill | Captures | Purpose |
|-------|----------|---------|
| source-capture | Ideas/content | Inspire ONE specific post |
| reference-capture | Style/patterns | Reference for ALL posts |

---

## Flow

### Step 1: Receive the Post

User shares:
- A URL to an article/post
- Pasted text
- Screenshot

If URL: Use WebFetch to read the content.
If Twitter: Ask for text copy or screenshot (direct URLs don't work).

### Step 2: Confirm It's for Style Reference

Ask: "¿Quieres guardar esto como **referencia de estilo**?"

If they want to capture ideas for a specific post → redirect to source-capture.

### Step 3: Analyze the Post (You Do This)

Read the entire post and extract:

**A. Opening Pattern**
- How does it start? (Question, story, bold statement, scene, data point...)
- First sentence structure
- How quickly does it get to the point?

**B. Structure Pattern**
- How are ideas organized? (Linear, problem→solution, story→lesson, list...)
- Paragraph length (short punchy? longer developed?)
- How does each section connect to the next?

**C. Rhythm Pattern**
- Sentence length variation (all similar? short-long contrast?)
- Use of fragments or incomplete sentences
- Pacing (fast and dense? slower with breathing room?)

**D. Signature Techniques**
- Does the author use specific devices? (Rhetorical questions, analogies, quotes from others, personal stories, data, contrasts, lists...)
- Any recurring patterns?

**E. Closing Pattern**
- How does it end? (Call to action, question, short punch, reflection...)
- Last sentence structure

**F. Voice Markers**
- What makes this voice distinctive?
- Formal/informal markers
- First person usage

### Step 4: Select Teaching Fragments

Choose 2-3 paragraphs that DEMONSTRATE the patterns you identified:

- One that shows the **opening technique**
- One that shows **how ideas develop** (the middle)
- One that shows the **closing technique** or a signature move

These can be long. The point is to show structure, not just quote good lines.

### Step 5: Present Analysis to User

Show your analysis in Spanish (for conversation), but remember the FINAL saved version must be in English.

Example conversation format:

```
## Mi análisis de este post:

**Cómo abre**: [describe pattern in Spanish for user]
**Estructura**: [describe in Spanish]
**Ritmo**: [describe in Spanish]
**Técnicas que usa**: [describe in Spanish]
**Cómo cierra**: [describe in Spanish]

**Fragmentos que muestran el estilo**:

[Fragment 1 - in original language of post]

[Fragment 2 - in original language of post]

---

¿Esto captura lo que te gustó del post? ¿Hay algún fragmento específico que quieras agregar o quitar?
```

**Note:** This is for USER CONVERSATION only. When saving to REFERENCES.md, translate patterns to English (see Output Format).

### Step 6: User Feedback

User confirms or adjusts:
- "Sí, eso es"
- "Agrega este párrafo también: [...]"
- "El fragmento 2 no tanto, mejor este otro: [...]"

### Step 7: Save to REFERENCES.md

Save the final reference with the confirmed analysis and fragments.

**IMPORTANT - Language rules:**
- Headers and pattern descriptions: ALWAYS in English
- Fragment labels (what the fragment shows): ALWAYS in English
- Fragment content (the actual quotes): Keep in the original language of the post

---

## Output Format (ALWAYS in English)

Each reference in `writing/REFERENCES.md`:

```markdown
## N. [Title of the Post]

**Author**: @handle or name
**Source**: [URL]

### Writing Patterns

**Opening**: [How the author opens - specific pattern]
**Structure**: [How ideas are organized and connected]
**Rhythm**: [Sentence/paragraph patterns]
**Techniques**: [Specific devices used - be concrete]
**Closing**: [How the author closes]

### Reference Fragments

**[What this fragment shows]**:
> [Full paragraph or section that demonstrates the technique]

**[What this fragment shows]**:
> [Another teaching fragment]

**[What this fragment shows]**:
> [Another teaching fragment if needed]

---
```

---

## Example Analysis

For a Paul Graham essay, the analysis might look like:

```
**Opening**: Starts with a counterintuitive observation in 1-2 short sentences. No setup, goes straight to the point that challenges something accepted.

**Structure**: Thesis → objection the reader would have → response to objection → concrete example → broader implication. Each paragraph answers what the reader would be thinking.

**Rhythm**: Paragraphs of 2-4 sentences. Short sentences (8-15 words). Rarely uses long subordinate clauses. After explaining something complex, drops a 5-word sentence.

**Techniques**:
- Uses "you" constantly (speaks directly to reader)
- Anticipates objections ("You might think X, but...")
- Specific examples with names and numbers
- Analogies from unexpected fields

**Closing**: Ends with the biggest implication, sometimes as an open question. Never summarizes what was said.
```

This is actionable. I can copy these patterns.

---

## What NOT to Capture

Avoid vague descriptions that don't help when writing:

| Vague (useless) | Concrete (useful) |
|-----------------|-------------------|
| "Professional tone" | "Uses 'we' instead of 'I', avoids contractions" |
| "Flows well" | "Each paragraph ends with a word that opens the next" |
| "It's clear" | "One idea per paragraph, max 3 sentences" |
| "Engaging" | "Opens with a question the reader can't easily answer" |

---

## Conversation Style

Be efficient but thorough:

1. Receive post
2. Confirm it's for style reference
3. Present your analysis + fragments
4. User confirms/adjusts
5. Save

Total: 3-4 exchanges.

---

## What This Skill Does NOT Do

- Does NOT capture ideas for a specific post (that's source-capture)
- Does NOT ask user to identify techniques (you do the analysis)
- Does NOT save vague descriptions
- Does NOT add to skills or VOICE.md (only REFERENCES.md)
