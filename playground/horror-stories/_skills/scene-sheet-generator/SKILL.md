---
name: scene-sheet-generator
description: Generate structured visual scene sheets from story text fragments for AI image generation. Use when the user provides fragmented story text (pre-divided scenes) and needs a detailed technical breakdown of each scene for consistent image generation with tools like Google Whisk. Triggers: "ficha técnica", "scene sheet", "desglose de escenas", "visual breakdown", requests to analyze story fragments for image generation, or any workflow that converts narrative text into structured visual production data.
---

# Scene Sheet Generator

Generate **copy-paste-ready Whisk prompts** for each story fragment. The output is a lean prompt sheet — not a film analysis. Every field in the output exists because it maps directly to something the user does in Whisk.

## Inputs

Two separate inputs required:

### 1. Story Brief

Completed `.md` from the Story Brief Builder. Provides: characters, visual style + classification, aspect ratio, story context.

### 2. Story Fragments (user-provided)

Numbered text blocks, each = one image. The user decides the cuts. If the story arrives without fragments, ask the user to divide it first. Never fragment it for them.

## Validation

Before processing:

- [ ] Story Brief has characters with style-appropriate physical fields
- [ ] Story Brief has visual style + classification (🎨/⬛/✨)
- [ ] Story Brief has aspect ratio
- [ ] At least one numbered fragment exists
- [ ] Every character in any fragment exists in the Brief

## Process

### Step 1: Internal Analysis (NOT in output)

Read ALL fragments in sequence. Internally identify:

- Emotional progression across the full story
- Which characters appear in which fragments
- Object continuity (items that carry between scenes)
- Time and location changes

This analysis makes the prompts smarter but never appears in the output file.

### Step 2: Generate Prompt Sheet

The output is a single `.md` file with this structure:

```markdown
# Whisk Prompt Sheet: [Story Title]

**Visual style**: [from Brief]
**Style category**: [🎨/⬛/✨]
**Aspect ratio**: [from Brief]
**Total scenes**: [N]

**Characters**:

- CHAR-01: [Name] — [1-line visual summary]
- CHAR-02: [Name] — [1-line visual summary]
```

Then one block per fragment:

```markdown
---

## Scene [N]

**Fragment**:

> [Exact fragment text — verbatim]

**Subject image**: [CHAR-ID] ([Name]) — [brief note on pose if relevant, e.g., "use seated reference" or "default standing"]

**Whisk prompt**:

> [The prompt to copy-paste into Whisk's text field. Max 25 words. Always includes character names. Calibrated to style.]

**Notes** (if needed):

- [Only if something specific matters for this generation: multiple characters, object that must be visible, specific Whisk setting to adjust. Otherwise omit this section entirely.]
```

### Prompt Construction Rules

**Always include character names in prompts.** Not "a woman walks" but "Lucía walks." Not "old man seated" but "Don Roberto seated." Whisk needs to know WHO.

**Multi-character scenes:** Choose the PRIMARY character for the Subject slot (whoever drives the action in this fragment). Mention the secondary character BY NAME in the prompt text. Note in the Subject image field which reference to use.

Example:

```
**Subject image**: CHAR-01 (Lucía)
**Whisk prompt**:
> Lucía offers bread to Don Roberto on his rocking chair, rural porch, afternoon, intaglio style
```

If a scene truly centers on two characters equally, note it:

```
**Notes**:
- Escena con dos personajes centrales. Genera dos variaciones: una con Lucía como Subject y otra con Don Roberto. Compara resultados.
```

**Prompt length:** 15-25 words. Enough to be specific, short enough for Whisk to process well.

**Prompt structure by style:**

For 🎨 COLOR:
`[Character name] [action], [other character name if present], [setting], [lighting/color atmosphere]`

For ⬛ MONOCHROMATIC:
`[Character name] [action], [other character name if present], [setting], [texture/contrast/shadow cues], [style name]`

For ✨ STYLIZED:
`[Character name] [action], [other character name if present], [simple setting], [style name]`

**Arc-aware prompts (informed by internal analysis, not stated):**

- If the previous scene was a wide establishing shot, this prompt should suggest a closer view — but express it through the action described, not through camera terminology
- If an object appeared in the previous fragment and reappears here, include it in this prompt
- If the emotional tone shifts between fragments, the setting/atmosphere words in the prompt should reflect that shift

**What NOT to put in prompts:**

- Camera terminology (no "medium shot", "close-up", "wide angle")
- Emotional analysis (no "tense anticipation", "warm nostalgia")
- Physical appearance descriptors (Whisk has the reference image — don't re-describe the character)
- Art direction language (no "rule of thirds", "negative space", "focal point")

**What TO put in prompts:**

- Character names (always)
- What they're doing (action/pose)
- Where they are (setting)
- Relevant objects
- Time of day / lighting condition if it matters
- Style name at the end (for MONOCHROMATIC and STYLIZED)

## Output Rules

1. **Copy-paste ready.** Every Whisk prompt should work if pasted directly into Whisk with zero editing.
2. **Character names always present.** Every prompt names every character in the scene.
3. **Never fragment the story.** Accept the user's fragments as-is.
4. **Lean output.** No cinematographic analysis, no emotional tone labels, no camera terminology, no narrative position. If it doesn't map to a Whisk action, it doesn't go in the output.
5. **Notes only when needed.** The Notes section is optional. Only include it when the user needs to do something non-obvious in Whisk (multiple Subject options, specific setting to toggle, object that must be visible).
6. **Consistency from the Brief.** Character clothing and details come from the Story Brief. Never invent.
7. **Style calibration.** Prompt language matches the classification. No color words for MONOCHROMATIC. Simple vocabulary for STYLIZED.
8. **Object continuity.** If an object matters across scenes, it appears in every relevant prompt.
9. **Language:** Prompt sheet structure in English. Whisk prompts in English. Notes in Spanish.

## Example

See `references/example-scene-sheet.md` for a complete Story Brief + fragments → prompt sheet example.
