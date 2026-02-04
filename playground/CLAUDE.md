# Playground — Viral Philosophical Post Factory

## Quién es Sergio

Sergio es un creador, builder y escritor de alto impacto. Su identidad está definida en dos archivos que **siempre** deben leerse como contexto antes de generar contenido:

- **Core Beliefs** → `indentity/CORE-BELIEFS.md` — Las verdades no negociables que dictan cómo se mueve en el mundo (honestidad brutal, economía del tiempo, excelencia en aislamiento, rechazo a la dilución).
- **Core Insights** → `indentity/CORE-INSIGHTS.md` — El "detrás de cámaras" de su personalidad (honestidad como privilegio, diplomacia como firewall, obsesión como motor, soledad como diseño, orgullo como talón de Aquiles).

## Sistema de Escritura

El sistema de tonos de Sergio es una arquitectura de 4 capas para escritura de alta densidad:

- **Guía Maestra** → `indentity/tones/TONE.md`
- **Capa 1 — El Filtro:** `indentity/tones/direct-minimalism-aphoristic-writing.md`
- **Capa 2 — El Ritmo:** `indentity/tones/staccato.md` + `indentity/tones/prosa-fragmentada.md`
- **Capa 3 — El Golpe:** Escritura aforística (incluida en Capa 1)
- **Capa 4 — El Remanso:** `indentity/tones/frase-larga.md`

## Framework de Posts Virales

Basado en el trabajo de Dan Koe, con 3 arquetipos y sus fórmulas:

- **Guía de Anatomía** → `prompts/guide-the-anatomy-of-viral-philosophical-posts.md`
- **Prompt Original** → `prompts/2026-01-30-viral-philosophy-post-creator.md`

## Reglas Globales

1. **Idioma de interacción:** Siempre español.
2. **Idioma de posts:** Siempre inglés.
3. **Ejecución:** Siempre paso a paso. El usuario invoca cada skill, revisa el output, y decide cuándo avanzar.
4. **Restricciones de posts:** Sin emojis, sin hashtags, sin citas de autoridad. Profundidad en lenguaje simple.
5. **Todas las rutas son relativas** a la raíz de `playground/`.

## Skills Disponibles

### Cadena de Producción Viral (4 pasos)

```
[Idea cruda] → /viral-seed → /viral-core → /viral-forge → /viral-polish → [9 posts pulidos]
```

- **viral-seed**: Captura una idea cruda y la transforma en una semilla estructurada. Usa cuando el usuario dice "tengo una idea", "nueva idea viral", o invoca `/viral-seed`.
- **viral-core**: Destila el núcleo filosófico de una semilla y crea 3 briefs de arquetipos. Usa cuando el usuario dice "destila el core", "extract core", o invoca `/viral-core`.
- **viral-forge**: Genera 9 borradores de posts (3 por arquetipo) a partir de los briefs. Usa cuando el usuario dice "forja los posts", "genera los posts", o invoca `/viral-forge`.
- **viral-polish**: Aplica el sistema de tonos de 4 capas a los 9 borradores, rankea y recomienda el mejor. Usa cuando el usuario dice "pule los posts", "polish posts", o invoca `/viral-polish`.
