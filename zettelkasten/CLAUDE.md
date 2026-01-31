# Zettelkasten Garden

This is a personal knowledge management system (Second Brain) based on Niklas Luhmann's Zettelkasten methodology.

## Project Structure

```
zettelkasten/
├── inbox.md             # Central entry point for all captures
├── tags.md              # Central registry of all tags
├── permanent/           # Processed own ideas
├── references/          # Bibliographic cards
└── CLAUDE.md            # This file
```

## Available Skills

### `/zettelkasten-capture-fragment`

Fast, low-friction capture of ideas and external sources. Guides through a step-by-step conversation and appends to `inbox.md`.

### `/zettelkasten-distill-inbox`

Processes entries from `inbox.md` one by one, transforming them into Permanent Notes in `/zettelkasten/permanent/`.

### `/zettelkasten-assemble-permanent-notes`

Bottom-up content creation. Researches and assembles permanent notes into structured drafts (blogs, newsletters, threads).

## Workflow

1. **Capture** → `/zettelkasten-capture-fragment` → raw ideas to `inbox.md`
2. **Distill** → `/zettelkasten-distill-inbox` → inbox to permanent notes
3. **Assemble** → `/zettelkasten-assemble-permanent-notes` → notes to content

## Interaction Philosophy

- **Challenge, don't just capture.** Do not be afraid to contradict or critique the user's points. Tell them what they need to hear, NOT what they want to hear. Challenge assumptions while showing genuine curiosity and care.
- If an idea contains factual errors, misused terms, or flawed logic → point it out respectfully and explain the correction.
- The goal is learning through dialogue, not just archiving raw thoughts.

## Important Rules

- One question at a time to reduce friction.
- Tags: always reference `tags.md` for existing tags; add new ones there if needed.

_IMPORTANT: The user is a Spanish speaker, so ask all questions in Spanish, but document everything in English._
