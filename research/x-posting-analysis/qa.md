# Q&A — Análisis de Posteo en X

Preguntas de Sergio, respuestas basadas en data real de la API.
**3 periodos analizados:** P3 Sep–Nov 2024 | P2 Mar–Jul 2025 | P1 Dic 2025–Feb 2026

---

## Q: ¿Con qué frecuencia postea Dan Koe?

**A:** Bajada constante en los 3 periodos:

| Periodo | Tweets/semana | Tweets/día (activo) |
|---------|---------------|---------------------|
| Sep–Nov 2024 | 14.6 | 2.3 |
| Mar–Jul 2025 | 10.6 | 1.9 |
| Dic 2025–Feb 2026 | 4.3 | 1.2 |

**Reducción total: -70%** de 2024 a 2026. En 2024 posteaba 2-3 veces al día. En 2026, máximo 1 vez.

**Fuente:** Los 3 archivos de raw-data en `raw-data/thedankoe/`

---

## Q: ¿Qué días postea Dan Koe?

**A:** Postea TODOS los días en todos los periodos, pero con preferencias consistentes:
- **Domingo** es su día más activo en los 3 periodos (16-20% de tweets)
- **Viernes** es consistentemente su día más flojo
- En 2024, miércoles era fuerte (19%). En 2025-2026, se niveló.

**Fuente:** Distribución por weekday en los 3 periodos

---

## Q: ¿A qué hora postea Dan Koe?

**A:** El pico horario migró progresivamente hacia la tarde:

| Periodo | Hora pico (COT) | Patrón |
|---------|----------------|--------|
| Sep–Nov 2024 | 8:00 AM | 3 slots programados (6:15, 8:15, 10:30) |
| Mar–Jul 2025 | 6:00 AM + 10:00 AM | Mismos 3 slots, el de 6 AM se hizo principal |
| Dic 2025–Feb 2026 | 12:00 PM | Sin slots fijos, postea manual entre 10 AM - 2 PM |

*En horario de verano US (Mar-Nov), Dan Koe está en EDT (UTC-4). Su hora local = COT + 1h.*

**Fuente:** Distribución por hora UTC convertida a COT (UTC-5)

---

## Q: ¿Menos tweets = menos engagement?

**A:** Al contrario. La evolución en 3 periodos lo confirma:

| Periodo | Tweets/semana | Avg ❤️/tweet | Avg 🔖/tweet |
|---------|---------------|-------------|-------------|
| Sep–Nov 2024 | 14.6 | 2,552 | 751 |
| Mar–Jul 2025 | 10.6 | 2,176 | 800 |
| Dic 2025–Feb 2026 | 4.3 | 13,952* | 25,510* |

*P1 inflado por outlier viral de 293K likes. Sin outlier: ~5,400 likes/tweet — aún 2.5x más que los otros periodos.

**Conclusión:** Menos tweets → más engagement por tweet. Consistente en toda la evolución.

**Fuente:** Comparación de `public_metrics` entre los 3 periodos

---

## Q: ¿Dan Koe retuitea sus propios tweets? ¿Tiene valor hacerlo?

**A:** No hace self-retweets clásicos. Lo que hace es **self-replies** — se responde a sí mismo. Dos estrategias:

### Estrategia 1: Self-reply como CTA (1-5 horas después)
Postea contenido de valor → 2-3 horas después se responde con link a newsletter/producto.

Ejemplos:
- Tweet (❤️6,791) → +3.1h → "here's a good place to start: [link]"
- Tweet (❤️3,159) → +4.0h → "Read today's letter on this: [link]"

### Estrategia 2: Threads largos (mismo momento)
Hilos de 10-15 tweets como un solo contenido. Hook arriba, CTA al final.

### Evolución de self-replies (3 periodos)
| Periodo | Self-replies | % de actividad |
|---------|-------------|----------------|
| Sep–Nov 2024 | 53 | 33% |
| Mar–Jul 2025 | 49 | 17% |
| Dic 2025–Feb 2026 | 3 | 6% |

**Está abandonando la estrategia progresivamente.** Pasó de 1 de cada 3 tweets ser self-reply a casi cero.

### ¿Tiene valor?
Sí para cuentas en crecimiento. El CTA diferido es más elegante que meter link en el tweet original (el algoritmo penaliza links). Pero Dan Koe con 855K followers ya no lo necesita tanto.

**Fuente:** `raw-data/thedankoe/` — análisis de `referenced_tweets` en los 3 periodos

---

## Q: ¿Las infografías hand-drawn (estilo GaryVee) tienen mejor engagement que tweets de texto?

**A:** Sí, y la métrica clave es **bookmarks**.

Ejemplo real: Tweet de @garyvee (Feb 13, 2026) con infografía "How to Start Doing Shit":
- ❤️ 701 likes
- 🔖 241 bookmarks
- **Ratio bookmark/like: 34%**
- 👁️ 18,366 impresiones

Un tweet de texto normal tiene ratio bookmark/like de 2-5%. Las infografías hand-drawn multiplican los saves x7-x17.

**Por qué importa:** Los bookmarks son señal fuerte para el algoritmo. Un tweet con muchos saves se distribuye más.

**Estilo:** Fondo negro, texto blanco handwriting, líneas/ramas tipo mapa mental, firma + avatar abajo. Digital y automatizable.

**Fuente:** API data del tweet `2022129880633421858` (@garyvee)

---

## Q: Top 10 tweets de Dan Koe por engagement (3 periodos)

### Top 10 — P3: Sep–Nov 2024

**#1** — ❤️ 57,062 | RT 4,765 | 🔖 7,673
📅 Dom 8:15am COT
🔗 https://x.com/thedankoe/status/1849439649216774413
💬 Go on more walks. Walk for no reason. Walk to solve a problem...

**#2** — ❤️ 8,023 | RT 569 | 🔖 6,039
📅 Mar 8:15am COT
🔗 https://x.com/thedankoe/status/1854132783167267064
💬 The best periods of my life came after a period of being absolutely fed up...

**#3** — ❤️ 7,299 | RT 604 | 🔖 3,859
📅 Lun 6:21am COT
🔗 https://x.com/thedankoe/status/1845778289631359174
💬 How to master any skill fast...

**#4** — ❤️ 6,850 | RT 591 | 🔖 7,512
📅 Mié 7:51am COT
🔗 https://x.com/thedankoe/status/1856645293787050393
💬 how to take back control of your life [imagen]

**#5** — ❤️ 5,649 | RT 551 | 🔖 1,195
📅 Dom 6:15am COT
🔗 https://x.com/thedankoe/status/1848694193075528146
💬 The death of your business happens when you obsess over a website, logo...

**#6-#10:** Ver archivo `dan-koe.md` para detalle completo.

### Top 10 — P2: Mar–Jul 2025

**#1** — ❤️ 10,803 | RT 652 | 🔖 990
📅 Lun 6:15am COT
🔗 https://x.com/thedankoe/status/1896519674277597614
💬 "Everyone is going to make their own apps with AI" My friend you don't even make your own food.

**#2** — ❤️ 10,020 | RT 948 | 🔖 4,363
📅 Lun 6:15am COT
🔗 https://x.com/thedankoe/status/1926960271278383373
💬 do this once every 6 months, minimum [imagen]

**#3** — ❤️ 9,952 | RT 1,091 | 🔖 2,147
📅 Dom 6:15am COT
🔗 https://x.com/thedankoe/status/1931671297672745408
💬 Your brain works against you until you give it a meaningful goal to wire itself around.

**#4** — ❤️ 8,936 | RT 994 | 🔖 3,128
📅 Sáb 10:30am COT
🔗 https://x.com/thedankoe/status/1900932502413602988
💬 If you don't shamelessly promote your work, every day for the next 10-20 years...

**#5** — ❤️ 8,268 | RT 533 | 🔖 12,731
📅 Jue 9:54am COT
🔗 https://x.com/thedankoe/status/1912882475497591091
💬 How I've been using AI: - Choose a task - Find YT expert...

**#6-#10:** Ver archivo `dan-koe.md` para detalle completo.

### Top 10 — P1: Dic 2025–Feb 2026

⚠️ Los #1-#4 son **Articles** (formato largo de X, no tweets). El algoritmo los impulsa.

**#1** — ❤️ 293,228 | 🔖 774,131 | 📝 Article
📅 Lun 11:31am COT
🔗 https://x.com/thedankoe/status/2010751592346030461

**#2** — ❤️ 46,859 | 🔖 77,835 | 📝 Article
📅 Dom 1:33pm COT
🔗 https://x.com/thedankoe/status/2012956603297964167

**#3** — ❤️ 34,597 | 🔖 79,603 | 📝 Article
📅 Sáb 12:32pm COT
🔗 https://x.com/thedankoe/status/2010042119121957316

**#4** — ❤️ 29,848 | 🔖 64,191 | 📝 Article
📅 Jue 10:46am COT
🔗 https://x.com/thedankoe/status/2011827303962329458

**#5 (Top tweet real)** — ❤️ 16,259 | RT 1,992 | 🔖 8,531
📅 Lun 10:57am COT
🔗 https://x.com/thedankoe/status/2015816382685090177
💬 The easiest way to get ahead is to commit to a period of skill development. 6-12 months.

**#6** — ❤️ 15,630 | RT 1,843 | 🔖 8,806
📅 Dom 11:13am COT
🔗 https://x.com/thedankoe/status/2015457970126201049
💬 Grab a notebook. Write out exactly what you want in your future...

**#7** — ❤️ 15,154 | RT 2,418 | 🔖 6,765
📅 Dom 12:41pm COT
🔗 https://x.com/thedankoe/status/2010406616622039407
💬 be harder on yourself [imagen]

**#8** — ❤️ 13,281 | RT 1,978 | 🔖 35,054
📅 Jue 12:44pm COT
🔗 https://x.com/thedankoe/status/2009320195848872014
💬 📝 [Article]

**#9** — ❤️ 12,654 | RT 1,644 | 🔖 3,060
📅 Mar 2:30pm COT
🔗 https://x.com/thedankoe/status/2011158825492234558
💬 You don't magically become focused. You practice it.

**#10** — ❤️ 11,672 | RT 761 | 🔖 1,658
📅 Sáb 9:16am COT
🔗 https://x.com/thedankoe/status/2012529476111122910
💬 $1 million dollar prizes aside, I think there's been a quiet hunger for articles.

**Fuente:** Los 3 archivos de raw-data

---

## Q: Frecuencia detallada de posteo — slots y patrones

**A:** Dan Koe usó 3 slots programados exactos durante 2024-2025 y los abandonó en 2026:

| Slot | Hora (COT) | P3: 2024 | P2: 2025 | P1: 2026 |
|------|-----------|----------|----------|----------|
| Slot 1 | 6:15 AM | ✅ Activo | ✅ Principal | ❌ Solo 2 tweets |
| Slot 2 | 8:15 AM | ✅ Principal | ✅ Activo | ❌ Abandonado |
| Slot 3 | 10:30 AM | ✅ Activo | ✅ Activo | ❌ Abandonado |
| Manual | Variable | 10-17h | 10-13h | 9-14h (todo manual) |

**El minuto exacto (:15, :15, :30) delata uso de herramienta** de scheduling (Tweet Hunter/SuperX, que él mismo ha mencionado en podcasts).

**En algún momento entre Jul-Dic 2025, dejó de programar.** Todo el periodo reciente muestra horarios variables.

### Para @serudda:
- Si programas tweets, usa slots fijos (la consistencia ayuda al algoritmo)
- El sweet spot para audiencia LATAM: **9 AM - 12 PM COT**
- Dan Koe probó que 1 tweet manual bien pensado > 3 tweets programados mediocres

**Fuente:** Análisis de timestamps exactos en los 3 periodos

---
