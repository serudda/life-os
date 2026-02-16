---
IMPORTANT: Read and strictly follow the standards in CORE_INSTRUCTIONS.md
---

# Visual Story Pipeline

AI-powered pipeline that transforms written stories into consistent, scene-by-scene images using Google Whisk. Three skills chain together, each consuming the previous skill's output.

## Pipeline Overview

```
[User Inputs] Story text + Visual style name
       ↓
[Skill 1] Story Brief Builder → Story Brief (.md)
       ↓
[Skill 2] Character Reference Generator → Whisk prompts for character refs
       ↓
[User] Generates character reference images in Google Whisk
       ↓
[User] Fragments the story into scenes manually
       ↓
[Skill 3] Scene Sheet Generator ← Story Brief + User Fragments
       ↓                          (two separate inputs)
       → Scene sheets with per-scene Whisk prompts (.md)
       ↓
[User] Generates scene images in Google Whisk
```

## Architecture Decisions

- **Story Brief is the hub document.** Every downstream skill reads from it. Never bypass it.
- **Skills are stateless.** Each skill reads its input, produces its output, and has no memory of previous runs.
- **No shared input folder.** Only Skill 1 touches the raw inputs. Skills 2 and 3 consume the Story Brief exclusively.
- **Fragmentation is the user's decision.** No skill splits the story into scenes. The user provides fragments as a separate input to Skill 3. The Story Brief contains the full story text, not fragments.
- **Visual style classification drives everything.** Three categories determine which character fields to collect and how to write prompts:
  - 🎨 **COLOR** (realistic, anime, watercolor) → all visual fields including colors
  - ⬛ **MONOCHROMATIC** (sketch, chiaroscuro, intaglio) → silhouette, texture, contrast only. No color fields.
  - ✨ **STYLIZED** (pixel art, minimalist, Pixar) → minimal fields, dominant trait + shape only
- **Reference images always exist by Scene Sheet stage.** Skill 3 assumes Skill 2 has been completed. Whisk Subject prompts focus on pose/action, never physical appearance.

## Language Policy

- **Skill files and Story Brief structure**: English (headers, field names, section titles)
- **User interaction** (interviews, confirmations): Spanish
- **Story content** (names, fragments, locations): Story's original language
- **Whisk prompts**: Always English
- **Culturally specific terms**: Original language with English in parentheses (e.g., "sombrero aguadeño", "café tinto")

## Project Structure

```
visual-story-pipeline/
├── CLAUDE.md                          # This file
├── story-brief-builder/               # Skill 1: Interview + Brief generation
│   ├── SKILL.md
│   ├── assets/
│   │   └── story-brief-template.md    # Target output format
│   └── references/
│       └── example-interview.md       # Full interview flow example
├── character-ref-generator/           # Skill 2: Character reference prompts
│   ├── SKILL.md
│   └── references/
│       └── example-character-refs.md  # Full character cards example
└── scene-sheet-generator/             # Skill 3: Per-scene visual breakdowns
    ├── SKILL.md
    ├── assets/
    │   └── story-brief-template.md    # Same template (synced copy)
    └── references/
        └── example-scene-sheet.md     # Full scene sheet example
```

## Skill Development Conventions

- Skill instructions use imperative/infinitive form
- SKILL.md body stays under 500 lines; overflow goes to `references/`
- Templates and output formats go in `assets/`
- Examples showing complete input→output go in `references/`
- Every skill defines: Input requirements → Process steps → Output format → Rules
- Package skills with: `python3 /mnt/skills/examples/skill-creator/scripts/package_skill.py <skill-folder> <output-dir>`

## Input/Output Contracts

### Skill 1: Story Brief Builder

- **In**: Raw story text + visual style description (both provided by user)
- **Out**: Story Brief `.md` following `assets/story-brief-template.md` format
- **Key behavior**: Classifies style FIRST, then adapts character questions to that classification

### Skill 2: Character Reference Generator

- **In**: Story Brief `.md`
- **Out**: Character Reference Cards `.md` with per-character Whisk prompts, setup guide, verification checklists, and generation order
- **Key behavior**: Reads character descriptions + style classification from Brief. Prompts calibrated to style (COLOR=colors, MONO=texture/silhouette, STYLIZED=dominant traits). Always specifies clean background. Reference images use 1:1 ratio regardless of final scene ratio.

### Skill 3: Scene Sheet Generator

- **In**: Story Brief `.md` (context) + User-provided fragments (numbered text blocks, given separately)
- **Out**: Scene sheets `.md` with per-fragment Whisk prompts (Subject + Scene + Refinement)
- **Key behavior**: Two separate inputs. Never fragments the story — accepts user's cuts as-is. Processes each fragment with dual context: global story arc + local fragment. Builds Character Registry from Brief. Camera transitions and emotional tones must form coherent progressions across the full sequence.

## Google Whisk Notes

- Whisk uses 3 image inputs: **Subject** (character), **Scene** (environment), **Style** (aesthetic)
- Uses Imagen 3 under the hood; Gemini generates text captions from uploaded images
- **Seed locking** keeps character consistent across generations
- Best practice: generate initial character on a **plain/clean background** to avoid AI confusing person with scenery
- Short prompts work better than long ones — max 15 words for refinement prompts
- Refine mode allows post-generation adjustments to lighting, position, expression
- Available at: https://labs.google/fx/tools/whisk

## Current Status

- ✅ Skill 1: Story Brief Builder — complete, packaged
- ✅ Skill 2: Character Reference Generator — complete, packaged
- ✅ Skill 3: Scene Sheet Generator — complete, packaged
- 🔲 End-to-end test with real story — pending
