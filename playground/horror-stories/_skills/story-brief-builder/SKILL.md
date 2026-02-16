---
name: story-brief-builder
description: Build a complete Story Brief from a raw story text and visual style through intelligent analysis and targeted interviewing. Use when the user has a story/narrative/script and a visual style reference, and needs to produce a Story Brief for the visual scene generation pipeline. Acts as an expert interviewer: classifies the visual style first, analyzes the story, then asks ONLY what cannot be confidently inferred — adapting character questions based on whether the style is color, monochromatic, or stylized. Triggers: "story brief", "brief de historia", "preparar brief", "analizar historia para imágenes", or when the user provides a story text and wants to prepare it for visual scene generation.
---

# Story Brief Builder

Analyze a raw story text and build a complete Story Brief through inference and targeted interviewing. Output must follow the format in `assets/story-brief-template.md`.

## Initial Inputs (both required)

The user provides two things upfront:

1. **Raw story text** — The complete narrative
2. **Visual style** — Either a text description (e.g., "Tenebris chiaroscuro", "realistic digital illustration") or a description of a reference image they have

If either is missing, request it before proceeding. Do NOT start analysis without both.

## Process

### Step 1: Classify Visual Style

Before analyzing anything else, classify the provided visual style into one of three categories:

**🎨 COLOR** — Styles where color is a character identifier.
Examples: realistic digital illustration, watercolor, anime, comic book, oil painting, Pixar 3D.
→ Ask ALL visual character fields including skin tone, hair color, clothing colors.

**⬛ MONOCHROMATIC** — Styles where color is absent or irrelevant.
Examples: sketch, pencil drawing, charcoal, chiaroscuro, intaglio print, ink wash, woodcut, engraving.
→ SKIP color fields (skin tone, hair color, clothing colors). Instead emphasize: texture (wrinkled/smooth/weathered skin), silhouette (hat shape, hair volume, body outline), contrast (dark vs light clothing), and form details (accessories, distinctive shapes).

**✨ STYLIZED** — Styles where detail is reduced or abstracted.
Examples: pixel art, flat design, minimalist illustration, paper cutout, sticker style.
→ Ask only essential identifying traits. Fewer fields, focus on what makes the character recognizable at low detail: one or two dominant features + overall shape.

Record this classification — it determines which character fields to ask in Step 3.

### Step 2: Deep Story Analysis

Read the entire story and extract/infer the following. For each item, assign a confidence level:

- **🟢 High confidence** — Explicitly stated or strongly implied in the text.
- **🟡 Medium confidence** — Inferable but ambiguous. Will present options.
- **🔴 Low confidence / Unknown** — Not inferable. Will ask with examples.

Extract:

**Story context:**

- Genre (from tone, events, vocabulary)
- Epoch/time period (from objects, language, technology mentioned)
- Geographic location (from place names, cultural markers, flora, slang)
- Cultural context (from customs, social dynamics, names)

**Characters:**

- Every character mentioned (even those referenced but not present)
- For each: name or role, approximate age (from context clues), relationships
- Physical appearance — extract ONLY what the text explicitly provides. Flag what's missing.
- Personality/demeanor: infer from dialogue and actions

**Story structure:**

- Key objects that appear across the narrative
- Time progression (single moment, hours, days, etc.)
- Dominant emotional arc

### Step 3: Present Analysis & Adaptive Interview

Present findings, then ask only what's needed. The character questions adapt to the style classification from Step 1.

```
## Lo que pude identificar en tu historia

### Estilo visual
- **Estilo**: [what user provided]
- **Clasificación**: [🎨 COLOR / ⬛ MONOCHROMATIC / ✨ STYLIZED]
- **Implicación**: [one line explaining what this means for character detail]

### Contexto
- **Género**: [inference] [🟢/🟡/🔴]
- **Época**: [inference] [🟢/🟡/🔴]
- **Ubicación**: [inference] [🟢/🟡/🔴]
- **Contexto cultural**: [inference] [🟢/🟡/🔴]

### Personajes encontrados
1. **[Name/Role]**: [what text says about them].
   - ✅ Lo que el texto provee: [fields]
   - ⚠️ Lo que necesito para este estilo: [only fields relevant to the style classification]
2. (repeat for each character)

### Arco emocional
[Brief description of the emotional journey]
```

**Interview rules:**

1. **Max 3-4 questions per round.** Multiple rounds if needed.
2. **Always provide examples** with each question.
3. **Group by character.** Ask all missing fields for one character before moving to the next.
4. **Confirm 🟡 inferences before asking 🔴 unknowns.**
5. **Never ask what the text already says.**
6. **Only ask aspect ratio** as the remaining production decision (style is already provided).

**Adaptive character fields by style:**

For **🎨 COLOR** styles, ask missing fields from this list:

- Skin tone ("piel clara, morena/trigueña, oscura, pálida con pecas...")
- Hair color ("negro, castaño oscuro, canoso, rubio, pelirrojo...")
- Hair style ("largo suelto, corto, recogido en moño, trenza, rapado...")
- Build ("delgado/a, atlético/a, robusto/a, complexión normal...")
- Distinguishing facial features ("usa lentes, tiene barba, cicatriz, pecas... o 'ninguno'")
- Default expression ("sonrisa cálida, serio/neutral, mirada cansada pero amable...")
- Clothing with colors ("camiseta blanca y jeans, vestido rojo floral, uniforme azul...")

For **⬛ MONOCHROMATIC** styles, ask missing fields from this list:

- Hair style — emphasis on shape and volume ("largo suelto y voluminoso, corto pegado al cráneo, recogido apretado...")
- Build — emphasis on silhouette ("silueta delgada y angular, robusto y ancho de hombros, encorvado...")
- Skin texture ("piel lisa y joven, arrugada y curtida por el sol, suave con pecas...")
- Distinguishing features — emphasis on form ("lentes redondos grandes, sombrero de ala ancha, barba larga y puntiaguda...")
- Default expression ("ceño fruncido, mirada serena, sonrisa sutil...")
- Clothing silhouette and contrast ("ropa oscura ajustada, camisa clara holgada, vestido largo que fluye...")

For **✨ STYLIZED** styles, ask only:

- 1-2 dominant identifying features ("¿Qué es LO PRIMERO que notas de [Name]? El rasgo que lo haría reconocible incluso como un ícono pequeño")
- Overall shape/silhouette ("¿Es alto y delgado? Bajito y redondo? ¿Lleva algo que defina su forma?")
- Clothing — simplified ("descríbeme su ropa de la forma más simple posible: color principal + tipo de prenda")

### Step 4: Compile Story Brief

Once all information is gathered, generate the complete Story Brief following `assets/story-brief-template.md`. Fill every field appropriate to the style classification. Include:

- Visual style and its classification
- All confirmed inferences
- All user-provided answers
- Character descriptions combining text evidence + user input, with fields appropriate to style type

### Step 5: Deliver and Confirm

Present the completed Story Brief as a `.md` file and ask: "¿Quieres ajustar algo antes de continuar con la generación de referencias de personajes?"

## Output

A single `.md` file following the Story Brief template format. This file becomes the central input for all subsequent skills in the pipeline (Character Reference Generator, Scene Sheet Generator).

## Tone

Professional but approachable production assistant. Interview interaction always in Spanish. Be direct: "Necesito saber X para que las imágenes sean precisas" is better than "¿Podrías decirme X?". Explain WHY each question matters for the visual output.

## Language Policy

- **Interview interaction**: Spanish
- **Story Brief structure**: English (field names, headers, section titles)
- **Story Brief content values**: Story's original language. Culturally specific terms kept in original with English translation in parentheses when useful for prompts.
- **Story context values**: English preferred, with original-language terms when culturally specific

## Example

See `references/example-interview.md` for a complete example of the analysis → interview → brief flow.
