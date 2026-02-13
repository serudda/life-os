# X Posting Analysis

Análisis de patrones de posteo de creadores de contenido en X (Twitter).
Objetivo: descifrar patrones de publicación (días, horas, frecuencia, engagement) para optimizar la estrategia de @serudda.

## Estructura

```
x-posting-analysis/
├── README.md              ← Este archivo (proceso + guía)
├── raw-data/
│   └── {username}/
│       ├── profile.json   ← Datos del perfil
│       ├── period1-*.json ← Tweets crudos por periodo
│       └── period2-*.json
├── {username}.md           ← Análisis completo + patrones
└── qa.md                   ← Preguntas y respuestas basadas en data
```

## Proceso Replicable (5 pasos)

### Paso 1: Obtener perfil del creador
```bash
curl -s "https://api.x.com/2/users/by/username/{USERNAME}?user.fields=public_metrics,created_at,description,location" \
  -H "Authorization: Bearer $X_BEARER_TOKEN"
```
Guardar en: `raw-data/{username}/profile.json`

### Paso 2: Definir periodos de análisis
- Mínimo 2 periodos para comparar evolución
- Recomendado: último periodo (2-3 meses recientes) vs periodo anterior (3-5 meses hace 6-12 meses)
- El endpoint `/users/{id}/tweets` permite `start_time` y `end_time` (ISO 8601)

### Paso 3: Extraer tweets
```bash
curl -s "https://api.x.com/2/users/{USER_ID}/tweets?max_results=100&start_time={START}&end_time={END}&tweet.fields=created_at,public_metrics,entities&exclude=retweets,replies" \
  -H "Authorization: Bearer $X_BEARER_TOKEN"
```
- Máximo 100 tweets por request
- Paginar con `pagination_token` si hay más
- Excluir RT y replies para ver solo contenido original
- Guardar en: `raw-data/{username}/period{N}-{descripcion}.json`

### Paso 4: Analizar patrones
Extraer de la data cruda:
- **Frecuencia:** tweets/semana, tweets/día
- **Días:** distribución por día de la semana
- **Horas:** distribución por hora (convertir UTC → COT)
- **Engagement:** likes, RT, replies promedio por tweet
- **Top performers:** tweets con más engagement
- **Evolución:** comparar periodos para ver cambios de estrategia

Guardar análisis en: `{username}.md`

### Paso 5: Q&A
Responder preguntas específicas de Sergio basadas en la data.
Agregar al archivo `qa.md` con formato:
```
## Q: [pregunta]
**A:** [respuesta basada en data]
**Fuente:** [archivo de datos consultado]
```

## Creadores Analizados

| Username | Followers | Periodos | Archivo |
|----------|-----------|----------|---------|
| @thedankoe | 855K | 3 (Sep-Nov24, Mar-Jul25, Dic25-Feb26) | [dan-koe.md](dan-koe.md) |

## API Notes
- **⚠️ COSTO ALTO:** $1.80 gastados en un solo análisis (de $5 recargados). SER QUIRÚRGICOS.
- **REGLA:** Todo response se guarda en raw-data/. Antes de llamar la API, verificar si ya tenemos la data local.
- **REGLA:** Responder preguntas del JSON local. Zero calls innecesarios.
- **Rate limit:** Free tier = 1 request/15 min para user timeline. Pro = más.
- **Pricing:** Pay per use (nuevo modelo 2026)
- **Credenciales:** `research/.env` (gitignored)
- **Límite histórico:** El endpoint de user timeline puede ir bastante atrás, no hay límite duro documentado
- **Exclude:** `retweets,replies` para solo contenido original
