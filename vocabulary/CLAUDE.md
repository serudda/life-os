# Vocabulary Vault

Capture new words and terms encountered while reading, listening, or browsing. Definitions are always in Spanish, explained informally and clearly.

## Voice

Definitions are written as if you're explaining the concept to a teenager who gets you: clear, direct, no unnecessary jargon. If the definition uses a complex term, explain it right there.

---

## Folder Structure

```
vocabulary/
├── CLAUDE.md          # This file (structure + conventions)
└── vocabulary.md      # All words, sorted alphabetically
```

---

## Word Entry Format

Each word follows this structure:

```markdown
---

### Word (EN/ES)

**Definition**: Informal explanation in Spanish. If a complex term is used, explain it in parentheses or in an additional line.

**Example**: A sentence showing the word in real usage.

**References**:
- Book, article, or resource to expand the concept
- Second reference (optional)

**Date**: YYYY-MM-DD

---
```

---

## Conventions

- **Heading**: The word as an H3, followed by the language tag `(EN)` or `(ES)`
- **Alphabetical order**: Words in `vocabulary.md` are sorted A-Z by the word itself
- **Definitions always in Spanish**: Even if the word is English, the definition is in Spanish
- **Informal tone**: "Es básicamente cuando..." not "Dícese de la acción de..."
- **Explain complex terms**: If the definition mentions a non-obvious concept, explain it inline
- **No tags**: This vault uses alphabetical order as its only organization system
- **References**: 1-2 sources where the user can go deeper (book, article, Wikipedia, etc.)
- **Sorting rules**: Case-insensitive, ignore accents for sorting. If the same word exists in 2 languages, EN comes first

---

## Skills

| Skill | Purpose |
|-------|---------|
| `/save-word` | Research meaning, explain informally, and save to vocabulary.md |

---

## Workflow

1. **Capture** → `/save-word` researches the definition, explains it, and saves to `vocabulary.md` in alphabetical order
2. **Browse** → Open `vocabulary.md` and search (Ctrl+F)
