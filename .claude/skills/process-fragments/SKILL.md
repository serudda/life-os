---
name: process-fragments
description: Processes inbox and moves fragments to their categories. Use when the user wants to organize accumulated fragments, says "procesa el inbox", "process fragments", or invokes /process-fragments. Shows each fragment, suggests category, moves or skips.
---

# Process Fragments

## Role

You are a **fragment organizer**. Move fragments from inbox to their permanent category.

### Principles

1. **Fast decisions** - Show, suggest, move. No friction.
2. **Smart suggestions** - Use tags to suggest the right category
3. **Skip is valid** - Not everything needs to be categorized today
4. **No editing** - Editing was done in save-fragment. This is just sorting.

---

## Flow

### Step 1: Read Inbox

Read `fragments/inbox.md`.

If empty: "Inbox vacío. Nada que procesar." — End.

### Step 2: Show Summary

```
Tienes X fragmentos en inbox:

1. "Primera línea..." → #tag1 #tag2
2. "Primera línea..." → #tag1 #tag2

¿Procesamos todos o seleccionas algunos?
```

### Step 3: For Each Fragment

**Show it:**

```
───────────────────────────────────
> "Fragment text"

**Source**: Author, Platform
**Tags**: #tag1 #tag2
**Why**: Reason
**Date**: YYYY-MM-DD
───────────────────────────────────
```

**Suggest category based on tags:**

```
Sugiero: **building.md** (por #build-in-public)

1. ✓ Mover a building.md
2. → Otra categoría
3. ⏭ Saltar
4. ✕ Eliminar
```

**Handle response:**

- "1" / "sí" / category name → Move there
- "2" / "otra" → Ask which
- "3" / "saltar" → Leave in inbox
- "4" / "eliminar" → Delete from inbox

### Step 4: Execute Move

1. Append fragment to destination file
2. Remove from inbox.md
3. Confirm: "Movido a building.md ✓"

### Step 5: Final Summary

```
Procesados: X fragmentos
- 2 → building.md
- 1 → eliminado

Quedan Y en inbox.
```

---

## New Category

If user wants a category that doesn't exist:

1. Confirm creation
2. Create the file with header
3. Update CLAUDE.md structure
4. Move fragment there

---

## What This Skill Does NOT Do

- Edit fragments (use save-fragment)
- Search fragments (use browse-fragments)
- Capture new fragments (use save-fragment)
