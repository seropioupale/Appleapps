# Appleapps

Apps de práctica para aprender a programar para Apple.

## PracticaTV: primera app (iPhone + Apple TV)

Una sola pantalla con un contador y tres botones. El **mismo código** funciona en iPhone, iPad y Apple TV.

### Qué hay en cada archivo

```
PracticaTV/
├── PracticaTV.xcodeproj      ← el proyecto: es lo que abres con Xcode
└── PracticaTV/
    ├── PracticaTVApp.swift   ← punto de entrada: lo primero que se ejecuta
    ├── ContentView.swift     ← la pantalla que ves (textos, número, botones)
    └── Assets.xcassets       ← imágenes y colores de la app
```

### Cómo abrirla en tu Mac

1. **Descarga el repositorio.** En Xcode: pantalla de bienvenida → *Clone Git Repository…* → pega
   `https://github.com/seropioupale/Appleapps` → elige la rama `claude/wizardly-hopper-iadqg2`.
2. **Abre** `PracticaTV/PracticaTV.xcodeproj`, si Xcode no lo abre solo.
3. **Elige dónde ejecutarla:** arriba, en el centro de la ventana, pulsa el nombre del dispositivo y elige
   - un simulador de **iPhone** (por ejemplo, *iPhone 16*), o
   - un simulador de **Apple TV** (si no aparece: *Xcode → Settings → Components* e instala tvOS).
4. **Pulsa ▶︎** (o `Cmd + R`). Se abrirá el simulador con la app.

En el simulador de Apple TV, el mando se maneja con las **flechas del teclado** y **Intro** para pulsar.
También puedes abrir el mando virtual en *Window → Show Apple TV Remote*.

### Requisitos

- Xcode 16 o posterior.
- iOS 17 / tvOS 17 o posterior.
