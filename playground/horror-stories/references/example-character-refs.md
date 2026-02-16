# Example: Character Reference Generator — Story Brief → Character Cards

## Input: Story Brief (relevant sections)

### Visual Style

- **Style description**: Antique Intaglio Print
- **Style category**: ⬛ MONOCHROMATIC
- **Character detail strategy**: No color fields. Focus on silhouette, texture, contrast, and form.

### Characters

**Main Character — Lucía**

- Approximate age: 25
- Hair style: Long, loose, wavy hair
- Skin texture: Smooth and young
- Build: Tall and slim
- Silhouette notes: Upright posture, flowing hair and skirt create soft vertical lines
- Distinguishing facial features: Soft, rounded facial features
- Default expression: Warm and curious gaze
- Default clothing: Loose light-colored blouse, long flowing skirt
- Clothing contrast: Light

**Supporting Character 1 — Don Roberto**

- Approximate age: 78
- Hair style: Hidden under hat; likely thin/sparse
- Skin texture: Deeply wrinkled, sun-weathered
- Build: Thin, frail
- Silhouette notes: Hunched posture, wide-brimmed sombrero aguadeño
- Distinguishing facial features: Thick gray mustache
- Default expression: Serious but kind
- Default clothing: Plaid shirt, dark dril pants
- Clothing contrast: Mixed — patterned shirt, dark pants

---

## Output

# Character References: Lucía y Don Roberto

## Whisk Setup Guide

### Before you start

1. Open Whisk at https://labs.google/fx/tools/whisk
2. Set aspect ratio to **1:1 (square)** for all character references
3. Have your **Style reference image** ready (Antique Intaglio Print) — use the same one for ALL characters
4. You will generate characters one at a time, approve each, then lock the seed

### Workflow per character

1. Leave the **Subject** slot empty (or use the dice for a starting point)
2. Leave the **Scene** slot empty — the prompt will specify a clean background
3. Drop your style reference image in the **Style** slot
4. Paste the character prompt into the text prompt field
5. Generate 3-4 variations
6. Pick the best one and click **Lock Seed** (🔒)
7. Save/download the image — this becomes your Subject reference for all scenes
8. If not satisfied, use **Refine** mode to adjust specific details

### Tips for best results

- If Whisk changes the face too much between generations, add "consistent face, same person" to the prompt
- For multi-character stories, generate ALL character references in the same session to keep style cohesion
- Save the seed number for each character in case you need to regenerate later

---

## CHAR-01: Lucía (Protagonista)

### Source Data (from Story Brief)

- Approximate age: 25
- Hair style: Long, loose, wavy hair
- Skin texture: Smooth and young
- Build: Tall and slim
- Silhouette notes: Upright posture, flowing hair and skirt create soft vertical lines
- Distinguishing facial features: Soft, rounded facial features
- Default expression: Warm and curious gaze
- Default clothing: Loose light-colored blouse, long flowing skirt
- Clothing contrast: Light

### Whisk Prompt

> 25-year-old woman, long loose wavy hair, tall slim upright posture, smooth youthful skin, soft rounded face, warm expression, light flowing blouse and long skirt, plain background, antique intaglio print style

### Generation Notes

- **Pose**: De pie, relajada, ligeramente girada a tres cuartos — Lucía es un personaje activo que camina en la historia, su postura erguida es clave
- **Framing**: Cuerpo completo — su silueta vertical (cabello largo + falda larga) es su identificador principal en estilo intaglio
- **Background**: Fondo plano y limpio. El estilo intaglio se encarga de la textura; un fondo vacío deja que la silueta hable
- **What to verify**:
  - ☐ ¿El cabello es largo, suelto y ondulado con buen volumen?
  - ☐ ¿La postura es erguida y la figura es alta y delgada?
  - ☐ ¿La ropa es clara y suelta (blusa + falda larga)?
  - ☐ ¿La silueta completa se distingue claramente del fondo?

---

## CHAR-02: Don Roberto (Vecino mayor)

### Source Data (from Story Brief)

- Approximate age: 78
- Hair style: Hidden under hat; likely thin/sparse
- Skin texture: Deeply wrinkled, sun-weathered
- Build: Thin, frail
- Silhouette notes: Hunched posture, wide-brimmed sombrero aguadeño
- Distinguishing facial features: Thick gray mustache
- Default expression: Serious but kind
- Default clothing: Plaid shirt, dark dril pants
- Clothing contrast: Mixed — patterned shirt, dark pants

### Whisk Prompt

> 78-year-old man, wide-brimmed hat, hunched thin frail frame, deeply wrinkled weathered skin, thick mustache, serious but kind expression, patterned shirt and dark pants, seated pose, plain background, antique intaglio print style

### Generation Notes

- **Pose**: Sentado — don Roberto aparece sentado en su mecedora a lo largo de toda la historia, su postura encorvada es característica
- **Framing**: Cuerpo completo sentado — el sombrero de ala ancha crea una silueta muy distintiva que necesita verse completa
- **Background**: Fondo plano y limpio. La textura arrugada de la piel y el patrón de la camisa son los detalles ricos que el intaglio va a capturar
- **What to verify**:
  - ☐ ¿El sombrero de ala ancha es visible y define la silueta superior?
  - ☐ ¿La postura es encorvada, no erguida?
  - ☐ ¿El bigote es tupido y visible como rasgo facial dominante?
  - ☐ ¿La piel muestra textura arrugada/curtida?
  - ☐ ¿La camisa tiene patrón visible (cuadros) que contraste con el pantalón oscuro?

---

## Generation Order

1. **Primero: CHAR-01 (Lucía)** — Es la protagonista y aparece en todas las escenas. Su referencia establece la línea base visual del proyecto. Una vez aprobada, bloquea el seed.
2. **Segundo: CHAR-02 (Don Roberto)** — Genera en la misma sesión de Whisk para mantener coherencia de estilo con Lucía.
