# Writing v2 — Sistema de Contenido Viral (Twitter)

## El Problema

El prompt actual (`prompt.md`) replica los arquetipos de Dan Koe (Patient Observer, Dramatic Prophet, Quiet Devastator), que nacieron de 3 tweets específicos de otros autores. Resultado: todo suena igual y no suena a Sergio.

## La Solución

Replicar el **proceso** de Dan Koe, no su resultado. Dos capas separadas:

### Capa 1: Voice Profile (se hace UNA VEZ, se refina con el tiempo)

**Objetivo:** Extraer TUS arquetipos, TU psicología de escritura, TU voz.

**Proceso:**
1. Sergio selecciona 5-10 tweets/posts que admira o que siente "así quiero sonar" (propios o de otros, en español o inglés)
2. Sinistra analiza cada uno: estructura, psicología, patrones, por qué funcionan
3. Se combinan en una **Guía Maestra personalizada** con:
   - Arquetipos propios (no los de Dan Koe)
   - Patrones psicológicos recurrentes
   - Fórmulas de estructura
4. Se cruza con los tonos ya definidos (staccato, prosa fragmentada, aforismo, frase larga)
5. Se cruza con CORE-BELIEFS.md y CORE-INSIGHTS.md (la identidad de Sergio)
6. Se genera el **Master Prompt** final

**Output:** `master-prompt.md` — El prompt definitivo que ya tiene tu voz, tus arquetipos, tus tonos.

**Frecuencia:** Se hace una vez. Se refina cada 1-2 meses si el estilo evoluciona o si encuentras nuevos tweets de referencia que quieras incorporar.

### Capa 2: Generación Semanal (se hace cada semana)

**Objetivo:** Generar ideas y borradores de tweets a partir de tu contenido fresco.

**Proceso (cada sesión de contenido, ~30 min):**
1. Sergio alimenta su **materia prima** de la semana:
   - Notas del Zettelkasten (ideas, reflexiones, lecturas)
   - Newsletter si hay
   - Cualquier insight que haya tenido
2. Sinistra usa el Master Prompt + la materia prima para:
   - Extraer las 5 ideas más potentes
   - Generar paradojas, quotes, arcos de transformación (building blocks)
   - Escribir 9 borradores de tweets (3 por arquetipo)
3. Sergio revisa, edita, descarta o reescribe
4. Se programan 3 tweets/día (o lo que defina)

**Output:** Borradores en `drafts/YYYY-MM-DD.md`

## Estructura del Proyecto

```
writing_v2/
├── README.md                  ← Este archivo (el plan)
├── identity/
│   ├── CORE-BELIEFS.md        ← ✅ Ya existe
│   ├── CORE-INSIGHTS.md       ← ✅ Ya existe
│   └── tones/                 ← ✅ Ya existen (4 tonos + guía maestra)
├── references/
│   └── tweets/                ← Tweets de referencia para analizar (Capa 1)
├── prompt-generator.md        ← ✅ Meta-prompt de Dan Koe para crear prompts (herramienta)
├── master-prompt.md           ← 🔨 Por crear (resultado de Capa 1)
├── prompt.md                  ← ⚠️ Prompt actual de Dan Koe (legacy, se reemplaza)
├── drafts/                    ← Borradores semanales
│   └── YYYY-MM-DD.md
└── I-Watched-Dan-Koe-...md   ← Transcripción de referencia
```

## Orden de Ejecución

### Fase 1: Voice Profile (esta semana)
- [ ] Sergio selecciona 5-10 tweets de referencia
- [ ] Análisis profundo de cada tweet (estructura, psicología, patrones)
- [ ] Combinar análisis → Guía de escritura con arquetipos propios
- [ ] Definir qué contexto se necesita de Sergio (identidad, audiencia, filosofía)
- [ ] Usar `prompt-generator.md` para generar el Master Prompt final
      (Fase 1 del meta-prompt: interview con contexto de Sergio)
      (Fase 2 del meta-prompt: instrucciones de escritura basadas en la guía)
- [ ] Cruce con tonos + CORE-BELIEFS + CORE-INSIGHTS
- [ ] Test: generar 9 tweets de prueba y validar con Sergio

### Fase 2: Primera Generación Real
- [ ] Sergio trae materia prima del Zettelkasten
- [ ] Generar building blocks (ideas, paradojas, quotes)
- [ ] Generar borradores
- [ ] Sergio edita y aprueba
- [ ] Publicar

### Fase 3: Iteración Continua
- [ ] Trackear qué tweets performan mejor
- [ ] Refinar arquetipos basado en data real
- [ ] Actualizar Master Prompt cada 1-2 meses

## Notas

- **Los arquetipos NO se cambian cada semana.** Son tu voz. Lo que cambia son las IDEAS.
- **Dan Koe no rehace sus arquetipos cada semana.** Él hizo el prompt una vez y lo que cambia es el contenido que alimenta (newsletter, ideas nuevas).
- **El Zettelkasten es tu ventaja.** Dan Koe usa su newsletter como materia prima. Tú tienes un sistema de conocimiento más profundo — eso debería dar tweets con más densidad de ideas.
