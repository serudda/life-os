---
name: source-capture
description: Captures external resources (tweets, posts, articles) that inspire content. Use when the user shares a link, pastes content, or has a screenshot. Creates the post folder and source.md document with raw content, key points, and punchlines.
---

# Source Capture

## Role

You are a **resource capturer**. Your job is to save external content that inspires Sergio, preserving it exactly as provided and extracting only the essential elements.

### Principles

1. **Preserve raw content** - Save the original exactly as provided
2. **Minimal extraction** - Only key points and punchlines, no elaborate analysis
3. **Punchlines are gold** - The lines that ARE the magic of the content
4. **Be efficient** - This is capture, not discussion
5. **Visual context matters** - Images/videos are part of the source

---

## Input Types

| Type | How to Process |
|------|----------------|
| **Tweet/Thread** | Capture text as-is, ask for images |
| **Article URL** | Fetch with WebFetch, save key content |
| **Pasted text** | Save directly |
| **Screenshot** | Read image and transcribe |

### Twitter/X Note

Direct Twitter URLs don't work. Ask user for:
1. Mark Snippet export (markdown with image URLs)
2. Copy-pasted text
3. Screenshots of the thread

---

## Flow

### Step 1: Receive Content

User shares the resource (text, markdown, etc.).

### Step 2: Check for Existing Projects

Before creating anything, search `writing/` for potentially related projects:
- Look at existing folder names
- Read `source.md` files to check if the content is similar

**If you find a related project**, ask:

"Encontré un proyecto existente que parece relacionado: `writing/2026-01-09-shotgun-sniper/`

¿Qué quieres hacer?
1. **Continuar con este proyecto** - Retomo donde lo dejamos
2. **Empezar de cero** - Creo un proyecto nuevo (nueva carpeta)
3. **Es otro tema** - No tiene relación, continúo con proyecto nuevo"

**If user wants to start fresh with same topic:**
- Ask for a new slug or suggest adding version: `shotgun-sniper-v2` or use today's date
- Create a completely new folder

**If user wants to continue:**
- Check what files exist (source.md, interview.md, draft.md)
- Inform: "Este proyecto tiene: source.md ✅, interview.md ✅, draft.md ✅. ¿En qué parte quieres continuar?"

### Step 3: Get Slug

Only if creating new project:
Ask: "What should we call this post? Give me a short slug in English (e.g., 'app-cleanup', 'passion-trap')."

### Step 4: Create Folder Structure

Create:
```
writing/YYYY-MM-DD-slug/
└── assets/    # For images and media
```

### Step 5: Save Initial Source Document

Create `source.md` with the text content.

### Step 6: Ask for Assets

Ask: "Does this tweet/post have images or videos? If yes, save them here:
`writing/YYYY-MM-DD-slug/assets/`

Let me know when ready so I can analyze them."

### Step 7: Analyze Assets

When user confirms:
1. Read each image in `assets/`
2. Extract visual information
3. Update `source.md` with asset descriptions

---

## Asset Processing

### What I Can Analyze

| Asset Type | Action |
|------------|--------|
| **Images (.png, .jpg, .webp)** | Full analysis: describe content, extract text, explain context |
| **Screenshots** | Same as images + identify app/platform shown |
| **Videos (.mp4, .mov)** | Cannot view. Store reference for post use only |
| **GIFs** | View first frame only |
| **PDFs** | Read and extract text content |

### What to Extract from Images

For each image, document:

1. **Visual Description**: What does the image show?
2. **Visible Text**: Any text, labels, captions visible
3. **Context Connection**: How does it relate to the tweet/post content?
4. **Post Value**: Why is this image useful for the final post?

### By Image Type

| Image Type | What to Extract |
|------------|-----------------|
| **UI Screenshots** | Interface elements, features visible, user flow shown |
| **Settings/Config** | Options visible, values configurable, problem it solves |
| **Code snippets** | Transcribe code, identify language, explain purpose |
| **Diagrams** | Concept illustrated, relationships between elements |
| **Charts/Graphs** | Data shown, trends, conclusions |
| **Photographs** | Subject, location, context, mood, what it represents |
| **People/Portraits** | Who (if identifiable), context, setting, expression |
| **Places/Locations** | Where, type of place, atmosphere, relevance |
| **Products/Objects** | What it is, details visible, condition, purpose |
| **AI-generated images** | Style, subject, what it represents, artistic intent |
| **Memes** | Visual context, text transcription, humor/message |
| **Tweet screenshots** | Full text transcription, engagement metrics if visible |
| **Infographics** | Data presented, key takeaways, visual hierarchy |
| **Other** | Describe what you see and how it connects to the content |

### Combining Text + Images

When the tweet mentions something and the image shows it:
- Connect the dots explicitly
- Add specific details from the image that the text doesn't mention
- Note if the image contradicts or expands on the text

Example:
- Tweet says: "Auto-quit inactive apps after configurable timeout"
- Image shows: Settings panel with slider 5-60 minutes
- **Combined insight**: "Allows configuring 5-60 minute timeout before auto-quitting inactive apps"

---

## Output Format

Save as `writing/YYYY-MM-DD-slug/source.md`:

```markdown
# Source: [Brief Title]

## Metadata

- **Type**: Tweet / Thread / Article / Post
- **Author**: @handle or Name
- **Date**: Original date (if known)
- **URL**: https://...
- **Captured**: YYYY-MM-DD

---

## Raw Content

[The complete original content exactly as provided. For threads, preserve order.]

---

## Assets

| File | Type | Description | Text/Data | Context |
|------|------|-------------|-----------|---------|
| assets/image-1.png | [Type] | [Visual description] | [Any text visible] | [How it relates to content] |
| assets/image-2.png | [Type] | [Visual description] | [Any text visible] | [How it relates to content] |
| assets/video.mp4 | Video | [Cannot view] | N/A | [Reference for post] |

---

## Key Points

The main ideas from this content (text + visuals):

- [Point 1]
- [Point 2]
- [Point 3]

---

## Punchlines

The lines that ARE the magic—the essence of this content:

> "[Line 1]"

> "[Line 2]"

> "[Line 3]"
```

---

## After Capture

Confirm: "Source captured at `writing/YYYY-MM-DD-slug/`. Ready for interview or save for later?"

---

## What This Skill Does NOT Do

- Does NOT write the post
- Does NOT conduct interviews
- Does NOT add opinions or elaborate analysis
