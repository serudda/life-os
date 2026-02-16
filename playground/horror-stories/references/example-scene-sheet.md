# Example: Scene Sheet Generator — Prompt Sheet Output

## Inputs

**Story Brief** (relevant sections):

- Style: Antique Intaglio Print / ⬛ MONOCHROMATIC
- Aspect ratio: 9:16
- CHAR-01: Lucía (~25) — cabello largo ondulado, silueta alta y delgada, blusa clara, falda larga
- CHAR-02: Don Roberto (~78) — sombrero aguadeño, postura encorvada, bigote tupido, camisa de cuadros, pantalón oscuro

**Fragments provided by user:**

1. "Lucía caminaba por el andén del pueblo cuando vio a don Roberto sentado en su mecedora, como todos los domingos. El viejo levantó la mano y la saludó sin decir palabra."

2. "Ella se acercó y le dejó una bolsa con pan recién hecho en la mesa de mimbre. Adentro de la casa se escuchaba una radionovela a todo volumen. Lucía se sentó un momento y miró las montañas verdes que rodeaban el pueblo. Sintió el frío de la tarde colándose entre los huecos del corredor."

3. "Don Roberto sacó un café tinto de algún lado y se lo ofreció. Tomaron en silencio mientras el sol se escondía detrás del cerro."

---

## Output

# Whisk Prompt Sheet: Lucía y Don Roberto

**Visual style**: Antique Intaglio Print
**Style category**: ⬛ MONOCHROMATIC
**Aspect ratio**: 9:16 (vertical)
**Total scenes**: 3

**Characters**:

- CHAR-01: Lucía — cabello largo ondulado, silueta alta y delgada, ropa clara
- CHAR-02: Don Roberto — sombrero aguadeño de ala ancha, encorvado, bigote tupido

---

## Scene 1

**Fragment**:

> Lucía caminaba por el andén del pueblo cuando vio a don Roberto sentado en su mecedora, como todos los domingos. El viejo levantó la mano y la saludó sin decir palabra.

**Subject image**: CHAR-01 (Lucía) — referencia de pie

**Whisk prompt**:

> Lucía walks along village porch toward Don Roberto seated in rocking chair, Don Roberto waves, rural afternoon, intaglio print style

---

## Scene 2

**Fragment**:

> Ella se acercó y le dejó una bolsa con pan recién hecho en la mesa de mimbre. Adentro de la casa se escuchaba una radionovela a todo volumen. Lucía se sentó un momento y miró las montañas verdes que rodeaban el pueblo. Sintió el frío de la tarde colándose entre los huecos del corredor.

**Subject image**: CHAR-01 (Lucía) — referencia de pie

**Whisk prompt**:

> Lucía sits on rural porch gazing at mountains, bread bag on wicker table beside Don Roberto in rocking chair, cold afternoon, intaglio print style

**Notes**:

- La bolsa de pan en la mesa de mimbre debe ser visible — es el objeto que conecta esta escena con la llegada de Lucía.

---

## Scene 3

**Fragment**:

> Don Roberto sacó un café tinto de algún lado y se lo ofreció. Tomaron en silencio mientras el sol se escondía detrás del cerro.

**Subject image**: CHAR-02 (Don Roberto) — referencia sentado

**Whisk prompt**:

> Don Roberto and Lucía share coffee on porch at sunset, mountain silhouette behind, rocking chair, quiet moment, intaglio print style

**Notes**:

- En esta escena el protagonista visual es Don Roberto (él inicia la acción del café), por eso se usa su referencia como Subject.
- Genera también una variación con Lucía como Subject para comparar cuál captura mejor el momento.
