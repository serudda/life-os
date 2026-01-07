# Claude Code en el bolsillo: cómo me conecto a mi Mac desde Android en 3 segundos (Tailscale + SSH + tmux)

Las ideas no llegan cuando estás sentado en tu escritorio. Llegan caminando, en un café, en el momento menos conveniente.

Mi problema era simple:

- **Claude Code vive en mi Mac** (repos, scripts, agentes, entorno real).
- Yo quería capturar ideas y ejecutarlas ahí mismo **desde Android**, sin reconfigurar nada, sin exponer puertos, y sin fricción.

**Objetivo final:** sacar el celular → abrir Termux → escribir una palabra → caer dentro del repo, con `tmux` y Claude Code listos.

---

## Qué construimos (en una frase)

**Tailscale + SSH + tmux + un comando de 1 palabra en Termux.**

- **Tailscale**: red privada cifrada entre tus dispositivos (sin abrir puertos).
- **SSH**: control remoto de tu Mac desde Android.
- **tmux**: sesión persistente (la idea nunca se pierde).
- **Termux**: el “teclado/pantalla” desde el teléfono.

**Resultado final:**

```bash
life
```

…y estoy dentro de mi proyecto `life-so` en la Mac con Claude Code listo.

---

## Modelo mental (para no confundirte)

- **Android** = cliente (pantalla + teclado + dictado)
- **Mac** = host (CPU + repos + Claude Code + agentes)

Si se cierra Termux, se cae la VPN, o se pierde señal:
**solo se cae la ventana.**
La sesión real sigue viva en la Mac gracias a `tmux`.

---

## Requisitos

### En tu Mac

- Tailscale instalado y logueado
- SSH habilitado (Remote Login)
- Homebrew
- `tmux`
- Claude Code instalado (comando `claude` funcional)

### En Android

- Tailscale conectado
- Termux
- OpenSSH instalado en Termux

---

## Paso 1 — Conecta Mac y Android por Tailscale

1. Instala Tailscale en Mac y Android
2. Inicia sesión en ambos
3. Conéctalo (deberías ver VPN activa)

{SCREENSHOT: Tailscale conectado en Mac}
{SCREENSHOT: Tailscale conectado en Android (icono VPN)}

### Obtén la IP privada de Tailscale de tu Mac

En tu **Mac**, corre:

```bash
tailscale ip -4
```

Ejemplo:

```text
100.69.244.47
```

Guárdala: esa IP funciona incluso si tu Mac está en Wi-Fi de casa y tú en datos móviles.

{SCREENSHOT: salida `tailscale ip -4`}

> Tip: si tienes MagicDNS habilitado, puedes usar un hostname. Si no, no pasa nada: vuelves a correr `tailscale ip -4` cuando lo necesites.

---

## Paso 2 — Habilita SSH en tu Mac

En macOS:
**System Settings → General → Sharing → Remote Login → ON**

- Recomendado: “Only these users”
- Añade tu usuario

{SCREENSHOT: Remote Login habilitado}

---

## Paso 3 — Instala Termux + SSH en Android

En Termux:

```bash
pkg update
pkg install openssh
```

---

## Paso 4 — Instala tmux en la Mac

En tu Mac:

```bash
brew install tmux
tmux -V
```

Si imprime versión, listo.

---

## Paso 5 — Verifica Claude Code en la Mac (muy importante)

En tu Mac:

```bash
command -v claude
claude --version
```

Si esto no funciona en tu Mac local, primero instala/configura Claude Code antes de seguir.

{SCREENSHOT: `claude --version`}

---

## Paso 6 — Encuentra la ruta real de tu proyecto (y no adivines)

La ruta real es el path absoluto donde vive tu repo en tu Mac.

En tu Mac, entra al repo y ejecuta:

```bash
pwd
```

Ejemplo real:

```text
/Users/serudda/Documents/Projects/life-so
```

✅ Esa es la ruta que vas a usar.

{SCREENSHOT: salida de `pwd` dentro del repo}

---

## Paso 7 — Prueba SSH desde Android (para validar todo)

En Termux (Android):

```bash
ssh TU_USUARIO@TU_IP_TAILSCALE
```

Ejemplo:

```bash
ssh serudda@100.69.244.47
```

### Confirmación rápida: ¿estoy en la Mac o en Android?

Dentro del SSH:

```bash
hostname
pwd
```

Para salir:

```bash
exit
```

---

## Paso 8 — Evita passwords para siempre (SSH keys)

Para que el flujo sea “instantáneo”, necesitas entrar sin password.

### 8.1 Genera una llave en Termux

En Termux (Android, local):

```bash
ssh-keygen -t ed25519
```

Acepta defaults con Enter.

### 8.2 Copia la llave a tu Mac

**Opción A (si tienes `ssh-copy-id`):**

```bash
ssh-copy-id TU_USUARIO@TU_IP_TAILSCALE
```

**Opción B (si no tienes `ssh-copy-id`):**

```bash
cat ~/.ssh/id_ed25519.pub | ssh TU_USUARIO@TU_IP_TAILSCALE 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'
```

Verifica:

```bash
ssh TU_USUARIO@TU_IP_TAILSCALE
```

Si entra sin password: perfecto.

{SCREENSHOT: SSH entrando sin password}

---

## Paso 9 — El ingrediente secreto: tmux para no perder sesión

En la Mac, `tmux` te da una sesión persistente. Si se cae la conexión, tu sesión sigue viva.

El comando clave:

```bash
tmux new -As life-so
```

- Si existe sesión `life-so`, reanexa.
- Si no existe, la crea.

Detach (dejar corriendo y salir de la ventana):

- `Ctrl + B` luego `D`

---

## Paso 10 — El comando de 1 palabra: `life` (setup final)

Este es el punto donde todo se vuelve “sacar celular → capturar idea → listo”.

### 10.1 Importante: por SSH el PATH puede ser diferente

Este fue el detalle que me rompió el flujo al principio:

- En mi Terminal local de Mac, `tmux` y `claude` funcionaban.
- Pero desde SSH, a veces el `PATH` cambia (y el comando **no existe**).
- Resultado: `tmux` o `claude` pueden dar “command not found” y la conexión se cierra.

**Solución robusta:** usar rutas absolutas para `tmux` y `claude`.

En tu Mac, guarda estos paths:

```bash
command -v tmux
command -v claude
```

Ejemplos típicos (Apple Silicon + Homebrew):

- `/opt/homebrew/bin/tmux`
- `/opt/homebrew/bin/claude`

{SCREENSHOT: salida de `command -v tmux` y `command -v claude`}

---

### 10.2 Define el comando en Termux (Android, local)

En Termux:

```bash
nano ~/.bashrc
```

Pega este bloque (ajusta usuario, IP, proyecto y rutas):

```bash
export LIFE_SO_HOST="serudda@100.69.244.47"
export LIFE_SO_PROJECT_DIR="/Users/serudda/Documents/Projects/life-so"

# Rutas absolutas (para que no falle por PATH en SSH)
export TMUX_BIN="/opt/homebrew/bin/tmux"
export CLAUDE_BIN="/opt/homebrew/bin/claude"

life() {
  ssh -tt "$LIFE_SO_HOST" "
    cd '$LIFE_SO_PROJECT_DIR' &&
    '$TMUX_BIN' new -As life-so \"cd '$LIFE_SO_PROJECT_DIR' && '$CLAUDE_BIN'\"
  "
}
```

Guarda en nano:

- `Ctrl + O`
- `Enter`
- `Ctrl + X`

Recarga:

```bash
source ~/.bashrc
```

Prueba:

```bash
life
```

Deberías caer:

- dentro del repo
- dentro de tmux
- con Claude Code listo (o reanudado)

{SCREENSHOT: Termux mostrando repo + tmux + Claude Code}

---

## Qué pasa si se cae la VPN, Termux o la señal

Nada importante.

- Se cae SSH (normal).
- `tmux` se queda vivo en la Mac.
- Reabres Termux → `life` → retomas exactamente donde estabas.

Esa es la diferencia entre “acceso remoto” y **un flujo de captura real**.

---

## Nota realista: si tu Mac duerme profundo, no conecta

El caso #1 cuando “desde la calle no conecta” es que el Mac está dormido.

Recomendaciones:

- deja el Mac **enchufado** cuando quieras disponibilidad
- habilita opciones de “wake for network access” si aplican
- evita que entre en sueño profundo si lo necesitas como “servidor personal”

---

## Bonus: mejora la UX de Termux (fuente grande)

⚠️ Importante: esto se hace en Android **sin estar conectado por SSH**.

Para confirmar que estás en Android:

```bash
uname -o
```

Debe decir `Android`.

Ahora:

```bash
mkdir -p ~/.termux
nano ~/.termux/termux.properties
```

Pega:

```properties
font_size=17
```

Cierra Termux por completo y vuelve a abrir.

{SCREENSHOT: termux.properties con font_size=17}

---

## Checklist final

- [ ] Tailscale conectado en Mac y Android
- [ ] SSH habilitado en Mac (Remote Login)
- [ ] `tmux` instalado en Mac
- [ ] Claude Code instalado y `claude --version` funciona en Mac
- [ ] SSH keys configuradas (sin password)
- [ ] Ruta real del repo confirmada con `pwd`
- [ ] `life` definido en `~/.bashrc` de Termux
- [ ] `TMUX_BIN` y `CLAUDE_BIN` configurados con rutas absolutas
- [ ] `life` te deja en repo + tmux + Claude listo
- [ ] Termux legible (font_size)

---

## Cierre

Lo valioso no es “usar la terminal en el celular”.
Lo valioso es eliminar fricción.

Cuando llegue una idea, no negocias con tu setup.

Solo:

```bash
life
```

…y construyes.

---

## Próximo nivel (si quieres)

- Un comando `idea "texto"` que guarde ideas en un inbox
- Que dispare agentes/scripts en background
- Y te notifique cuando termine

Si te interesa, ese puede ser el siguiente post.
