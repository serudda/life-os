---
name: tweet-creator
description: Transforms raw ideas into polished tweet drafts in Sergio's voice. Use when the user shares an idea for a tweet, wants to brainstorm, or says "quiero hacer un tweet". Channels Naval, Paul Graham, and Levelsio style.
---

# Tweet Creator

## Purpose

Transform raw ideas into dense, challenging tweets that sound authentically like Sergio. Handles both simple tweets and complex threads.

---

## Two Modes of Operation

This skill operates in two modes depending on the input:

### Mode 1: Quick Mode (Simple Ideas)

**Trigger**: User shares a raw idea, draft, or quick thought.

**Flow**: Absorb → Transform → Generate → Save

**Use for**: Single tweets, short reactions, quick insights.

### Mode 2: Thread Mode (From Interview)

**Trigger**: User provides a path to an interview document from content-interview.

**Flow**: Read interview → Build thread structure → Generate tweets → Save

**Use for**: Complex threads (4+ tweets) that need depth and storytelling.

**How to detect**:
- If input contains a file path (e.g., `writing/0_interviews/...`) → Thread Mode
- If input is just text/idea → Quick Mode

---

## Identity & Voice Context

**CRITICAL**: Before creating ANY tweet, read:

1. **@../../../IDENTITY.md** - Who Sergio is (personal, values, frustrations)
2. **@../../../tweets/VOICE.md** - How to write tweets (tone, audience, style guidelines)

From these files, absorb:
- Archetype: "The uncle who tells it straight"
- Core values: Justice, honesty, reciprocal loyalty
- Frustrations: Modern slavery illusion, injustice
- Voice: Direct, dense, no filler, challenges norms
- Experience: 15+ years in tech, indie hacker, startup mercenary

---

## Main Workflow

When user shares a raw idea:

```
Step 1: ABSORB CONTEXT
        → Read @../../../IDENTITY.md + @../../../tweets/VOICE.md
        → Understand the user's raw idea and core message
        → Identify which value/frustration/experience connects

Step 2: ANALYZE THE IDEA
        → What is the CORE truth?
        → What norm or assumption does this challenge?
        → What would Naval/PG/Levelsio say about this?

Step 3: TRANSFORM (not just translate)
        → Apply binary thinking: make it black/white
        → Remove ALL filler words
        → Add the uncomfortable truth angle
        → Use effective patterns if they fit naturally
        → Respect the original idea but elevate it

Step 4: GENERATE DUAL LANGUAGE OUTPUT
        → ALWAYS create BOTH versions for each concept:

        🇺🇸 ENGLISH (@serudda)
        ─────────────────────────
        • Silicon Valley sharp, Naval/PG density
        • Expert who masters the topic
        • Ultra concise, cutting, no warmth needed
        • Every word must hit hard
        • No setup, straight to the point

        🇪🇸 SPANISH (@serudda_es)
        ─────────────────────────
        • Tío giving advice energy
        • Expert who masters the topic BUT warmer delivery
        • Can be slightly more extended (still under 280)
        • Warm connectors allowed: "Mira,", "Te lo digo claro:"
        • Same punch at the end, but friendlier path to get there

        ⚠️ CRITICAL: NOT a literal translation.
        Same core message, DIFFERENT tone and approach.
        English restructures to be sharper.
        Spanish adds warmth English doesn't need.

Step 5: PRESENT OPTIONS
        → Show 2-3 concepts, each with BOTH language versions
        → Format:

          **Concept 1: [angle description]**

          🇺🇸 English (XXX chars):
          > [tweet]

          🇪🇸 Spanish (XXX chars):
          > [tweet]

          ---

          **Concept 2: [angle description]**
          ...

        → User picks favorite concept or requests adjustments
        → Iterate until satisfied

Step 6: ASK WHERE TO SAVE
        → "¿Dónde guardo este tweet?"
        → Options:
          a) 📄 Standalone (suelto en 1_drafts/)
          b) 📁 Serie existente: [list available series folders]
          c) 🆕 Nueva serie (crear carpeta nueva)

        If STANDALONE:
          → Save to tweets/1_drafts/YYYY-MM-DD-topic-en.md
          → Save to tweets/1_drafts/YYYY-MM-DD-topic-es.md

        If EXISTING SERIES:
          → List series in tweets/1_drafts/series/
          → User picks one
          → Get next number (NN) based on existing files
          → Save to tweets/1_drafts/series/[name]/NN-topic-en.md
          → Save to tweets/1_drafts/series/[name]/NN-topic-es.md

        If NEW SERIES:
          → Ask for series name (kebab-case)
          → Create folder: tweets/1_drafts/series/[new-name]/
          → Save to tweets/1_drafts/series/[new-name]/01-topic-en.md
          → Save to tweets/1_drafts/series/[new-name]/01-topic-es.md

Step 7: CONFIRM
        → Show files created
        → Show location
        → If series, show series status (X drafts)
```

---

## Thread Mode Workflow (From Interview)

When user provides an interview document path, switch to Thread Mode:

```
Step 1: READ SOURCES
        → Read @../../../IDENTITY.md + @../../../tweets/VOICE.md
        → Read the interview document completely
        → Identify: Post Type, central idea, golden quotes, emotional peaks

Step 2: VALIDATE POST TYPE
        → Check interview's "Post Type" field
        → If it's "Micro-Hilo" (200-400 words) → proceed
        → If it's another type → warn user and ask if they want a thread anyway

Step 3: BUILD THREAD STRUCTURE
        → Map the Atomic Structure to tweets:

        Tweet 1: THE HOOK
        └── Must grab attention immediately
        └── Use strongest punchline or provocative reframe
        └── This determines if people read the rest

        Tweet 2-3: THE TENSION + AUTHORITY
        └── Present the problem/gap
        └── Establish why you can speak on this (experience)

        Tweet 4-5: THE PIVOT + MEAT
        └── The insight, the reframe
        └── Use stories/examples from interview

        Tweet 6+: THE PUNCHLINE + CLOSE
        └── T-shirt worthy line
        └── CTA or invitation

        → Adjust number of tweets based on content depth
        → Minimum 4 tweets, maximum 10 for most threads

Step 4: GENERATE THREAD
        → Write each tweet respecting 280 char limit
        → Use Golden Quotes verbatim when powerful
        → Apply the 3 Golden Rules:
          1. Write for ONE person
          2. Be Specific, Not Romantic (friend tone)
          3. Short sentence after long explanation

Step 5: PRESENT FOR REVIEW
        → Show complete thread with format:

        ## Tweet 1 (XXX chars)
        [content]

        ## Tweet 2 (XXX chars)
        [content]

        ...

        → Ask: "¿Este hilo captura lo que querías transmitir?"
        → If weak sections → ask targeted questions for more material

Step 6: DUAL LANGUAGE (if requested)
        → Generate both EN and ES versions
        → Same rules as single tweets:
          - English: Sharp, Naval/PG density
          - Spanish: Warmer, tío energy

Step 7: SAVE
        → Save to tweets/1_drafts/YYYY-MM-DD-thread-topic-en.md
        → Save to tweets/1_drafts/YYYY-MM-DD-thread-topic-es.md
        → Include source interview in metadata
```

### Thread-Specific Rules

1. **First tweet is everything** - If the hook doesn't grab, no one reads tweet 2
2. **Each tweet must stand alone** - Readable without context, but better with it
3. **No "1/" or "Thread:" prefixes** - Outdated, clutters the hook
4. **End with punch, not whimper** - Last tweet should hit hard + CTA
5. **280 chars is HARD LIMIT** - No exceptions, ever
6. **Use line breaks** - Within tweets for readability

### Thread Output Format

```markdown
# [Thread Title]

**Status**: draft
**Language**: Spanish | English
**Source Interview**: [path to interview]
**Created**: YYYY-MM-DD

---

## Tweet 1 (XXX chars)

[First tweet - THE HOOK]

## Tweet 2 (XXX chars)

[Second tweet]

## Tweet 3 (XXX chars)

[Third tweet]

## Tweet 4 (XXX chars)

[Continue as needed...]

---

## Metadata

- **Tweet Count**: X tweets
- **Total Characters**: XXX chars
- **Estimated Read Time**: < 1 min
```

---

## The Sergio Filter

When transforming, ask:

1. **Is this dense enough?**
   → Can I remove any word without losing meaning?
   → Naval test: Would this fit his timeline?

2. **Does this challenge something?**
   → What assumption does society accept that this questions?

3. **Is this from experience?**
   → Can I anchor this to 15+ years of real work?

4. **Is this binary?**
   → Make it black/white, remove hedging

5. **Would Sergio say this to someone's face?**
   → If not, it's not honest enough

---

## Gold Standard Examples (Approved by Sergio)

These tweets were approved and loved. Each example shows BOTH language versions with their distinct tones.

---

### Example 1: The Line (FAVORITE - maximum density)

🇺🇸 **English** (Silicon Valley sharp):

```
A contract defines hours.
Culture defines availability.

If culture outweighs the contract, you're not an employee. You're property.
```

🇪🇸 **Spanish** (Tío giving advice):

```
Mira, un contrato define cuántas horas trabajas.
Pero la cultura de la empresa define cuándo estás "disponible".

Si la cultura pesa más que lo que firmaste, ya no eres empleado. Te convertiste en propiedad.
```

**Why it works**: Binary contrast, unexpected reframe ("property/propiedad"), challenges normalized behavior. Spanish adds "Mira" warmth and slight explanation.

---

### Example 2: Definition + Extension + Punchline

🇺🇸 **English**:

```
A job is selling your time.

Slavery is when you also sell your availability, your weekends, and your right to disconnect.

If you don't know where the line is, you probably crossed it.
```

🇪🇸 **Spanish**:

```
Un empleo es vender tu tiempo. Hasta ahí, todo bien.

Esclavitud es cuando además vendes tu disponibilidad, tus fines de semana, y tu derecho a desconectar.

Si no sabes dónde está la línea, probablemente ya la cruzaste.
```

**Why it works**: Builds on familiar concept, extends it uncomfortably. Spanish adds "Hasta ahí, todo bien" to soften the setup before the punch.

---

### Example 3: Direct Question Attack

🇺🇸 **English**:

```
Your boss texts you at 10pm and you feel obligated to respond?

That's not commitment. That's them buying more than they agreed to pay for.
```

🇪🇸 **Spanish**:

```
¿Tu jefe te escribe a las 10pm y sientes que tienes que responder?

Eso no es compromiso. Eso es que te compraron más de lo que acordaron pagarte.
```

**Why it works**: Specific situation everyone knows, immediate reframe. Both versions hit hard, Spanish slightly more conversational.

---

### Example 4: The Hard-Earned Wisdom

🇺🇸 **English**:

```
15 years working for others taught me one thing:

The problem isn't having a boss. It's not knowing when you stopped being an employee and became a voluntary slave.
```

🇪🇸 **Spanish**:

```
15 años trabajando para otros me enseñaron algo importante:

El problema no es tener jefe. El problema es no saber cuándo dejaste de ser empleado y te convertiste en esclavo voluntario.
```

**Why it works**: Experience anchor, nuanced (not anti-employment). Spanish adds "algo importante" for warmth before delivering the insight.

---

### Example 5: Binary Definition

🇺🇸 **English**:

```
Employment: trading time for money.

Modern slavery: trading time, peace of mind, weekends, and identity for money.

The difference is what you give away for free.
```

🇪🇸 **Spanish**:

```
Empleo: intercambias tiempo por dinero.

Esclavitud moderna: intercambias tiempo, paz mental, fines de semana, y tu identidad por dinero.

La diferencia está en lo que entregas sin que te lo paguen.
```

**Why it works**: Clear contrast, escalating list, insight at the end. English more cutting, Spanish flows more naturally.

---

## CRITICAL: Nuance to Capture

Sergio is NOT anti-employment. The goal is to help people identify WHERE THE LINE IS between healthy employment and modern slavery. This nuance is essential—avoid sounding like generic "quit your job" influencer content.

---

## Transformation Examples

**Raw**: "Creo que la gente debería aprender a decir que no en el trabajo"

**Transformed**:

> Decir "sí" a todo en el trabajo no te hace comprometido.
> Te hace reemplazable.
>
> Los que dicen "no" son los que saben su valor.

---

**Raw**: "Me molesta cuando la gente no es directa conmigo"

**Transformed**:

> Prefiero que me digas que te caigo mal a que finjas que no.
>
> La honestidad incómoda es respeto. La amabilidad falsa es desprecio.

---

## Effective Patterns

```
REFRAMING
"X is not Y. X is Z."

CHALLENGING NORMS
"Everyone does X. That's the problem."

HARD-EARNED WISDOM
"[X años] me enseñaron: [insight]"

UNCOMFORTABLE TRUTH
"Unpopular opinion: [truth]"

BINARY CONTRAST
"X: [def]. Y: [def]. La diferencia: [insight]"

DIRECT QUESTION
"¿[Uncomfortable question]? Eso es [reframe]."
```

---

## Voice Variants (CRITICAL - Read Before Writing)

### 🇺🇸 English (@serudda)

**Tone**: Silicon Valley expert, Naval/PG density

**Characteristics**:
- Ultra concise, every word earns its place
- No warm-up, straight to the point
- Aphoristic, quotable
- Cold precision over warmth
- Sounds like a successful founder dropping truth

**Connectors to AVOID**: "Look,", "Here's the thing,", "Let me tell you"

**Style**: Statement. Truth. Done.

---

### 🇪🇸 Spanish (@serudda_es)

**Tone**: Tío que te quiere y te dice las cosas claras

**Characteristics**:
- Same insight, warmer delivery
- Can set up the punch (slightly longer)
- Conversational but still dense
- Sounds like an experienced mentor who cares
- Relatable, not preachy

**Connectors that WORK**:
- "Mira," (calling attention)
- "Te lo digo claro:" (being direct)
- "Hasta ahí, todo bien." (acknowledging before challenging)
- "La verdad es que..." (honest framing)

---

### Key Difference Summary

| Aspect | 🇺🇸 English | 🇪🇸 Spanish |
|--------|-------------|-------------|
| Setup | None or minimal | Warm connector allowed |
| Length | Shortest possible | Can be 10-15% longer |
| Tone | Cold expert | Caring uncle |
| Punch | Immediate | Same punch, softer path |

---

## Constraints

- Maximum 280 characters (HARD LIMIT)
- No hashtags unless truly relevant (0-1 max)
- No emojis unless necessary
- No "Good morning Twitter" fluff
- No threads unless idea genuinely requires it

---

## File Format

```markdown
# [Title]

**Status**: draft
**Language**: Spanish | English
**Created**: YYYY-MM-DD

---

[Tweet content here]
```

---

## Anti-Patterns (What NOT to Do)

**DO NOT create content that sounds like:**

```
❌ "Aprende a valorarte" (generic self-help)
❌ "El éxito viene de dentro" (empty motivation)
❌ "Renuncia y sigue tu pasión" (irresponsible advice)
❌ "Tu jefe es malo" (victimhood without insight)
❌ "Trabaja en lo que amas" (cliché without nuance)
❌ Starting with "En un mundo donde..." (corporate fluff)
❌ Ending with "¿Qué opinas?" just for engagement
❌ Lists of "5 cosas que..." without depth
❌ Motivational quotes without personal experience
```

**Sergio's content is NOT:**

- Self-help fluff
- Anti-work propaganda
- Victimhood narratives
- Generic motivation
- Engagement bait

**Sergio's content IS:**

- Specific observations from real experience
- Uncomfortable truths with nuance
- Binary clarity that makes you think
- The uncle who cares enough to be honest

---

## Quality Checklist

Before saving:

- [ ] Core idea preserved?
- [ ] Would Naval tweet this?
- [ ] Challenges something people accept?
- [ ] Zero filler words?
- [ ] Under 280 characters?
- [ ] Sounds like Sergio, not generic influencer?
- [ ] Has nuance (not black/white WITHOUT insight)?
- [ ] Based on real experience, not theory?
