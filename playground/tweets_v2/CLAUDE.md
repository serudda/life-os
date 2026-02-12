---
IMPORTANT: Read and strictly follow the standards in CORE_INSTRUCTIONS.md
---

# Playground — Viral Philosophical Post Factory

Experimental vault for generating viral philosophical posts. Takes raw ideas through a 4-step production chain that structures, distills, drafts, and polishes content aligned with Sergio's voice and worldview.

## Project Structure

```
playground/
├── indentity/
│   ├── CORE-BELIEFS.md                 # Non-negotiable truths that drive decisions
│   ├── CORE-INSIGHTS.md                # Behind-the-scenes of Sergio's personality
│   └── tones/
│       ├── TONE.md                     # Master tone guide
│       ├── direct-minimalism-aphoristic-writing.md  # The Filter
│       ├── staccato.md                 # The Rhythm (part A)
│       ├── prosa-fragmentada.md        # The Rhythm (part B)
│       └── frase-larga.md             # The Respite
├── prompts/
│   ├── guide-the-anatomy-of-viral-philosophical-posts.md  # Anatomy guide (Dan Koe framework)
│   └── 2026-01-30-viral-philosophy-post-creator.md        # Original prompt
└── CLAUDE.md
```

## Context Files

Before generating any content, **always** read these two files:

- `indentity/CORE-BELIEFS.md` — Non-negotiable truths: brutal honesty, time economy, excellence in isolation, rejection of dilution.
- `indentity/CORE-INSIGHTS.md` — Personality drivers: honesty as privilege, diplomacy as firewall, obsession as engine, solitude by design, pride as Achilles' heel.

## Writing System

Sergio uses 4 writing styles (The Filter, The Rhythm, The Punch, The Respite) that mix in different ratios depending on the channel (tweet, LinkedIn, newsletter). Before writing or polishing any post, **always** read:

- `indentity/tones/TONE.md` — Master guide with all 4 styles, examples, and channel-specific ratios.

## Viral Post Framework

Based on Dan Koe's work. 3 archetypes with their own formulas:

- **Anatomy Guide** → `prompts/guide-the-anatomy-of-viral-philosophical-posts.md`
- **Original Prompt** → `prompts/2026-01-30-viral-philosophy-post-creator.md`

## Workflow

```
[Raw idea] → /playground-viral-seed → /playground-viral-core → /playground-viral-forge → /playground-viral-polish → [9 polished posts]
```

1. **Seed** → `/playground-viral-seed` → captures raw idea into a structured seed
2. **Core** → `/playground-viral-core` → distills philosophical core, creates 3 archetype briefs
3. **Forge** → `/playground-viral-forge` → generates 9 draft posts (3 per archetype)
4. **Polish** → `/playground-viral-polish` → applies writing styles from TONE.md, ranks, and recommends the best

## Available Skills

### `/playground-viral-seed`

**Input**: Raw idea
**Output**: Structured seed

Captures a raw idea and transforms it into a structured seed ready for distillation. Classifies, connects with Sergio's identity, and generates the foundation for the next step.

### `/playground-viral-core`

**Input**: Structured seed
**Output**: 3 archetype briefs

Distills the philosophical core from a seed and creates 3 strategic briefs — one per archetype — ready for post generation.

### `/playground-viral-forge`

**Input**: 3 archetype briefs
**Output**: 9 draft posts (3 per archetype)

Generates draft posts from the briefs. Each archetype produces 3 variations.

### `/playground-viral-polish`

**Input**: 9 draft posts
**Output**: 9 polished posts with ranking

Applies the writing styles from TONE.md to all drafts, ranks them, and recommends the best one.

## Conventions

- **Post language**: Always English.
- **Post restrictions**: No emojis, no hashtags, no authority quotes. Depth in simple language.
- **Execution**: Always step by step. The user invokes each skill, reviews output, and decides when to advance.
- **All paths are relative** to the `playground/` root.
