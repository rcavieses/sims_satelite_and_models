# 🛰️ Satélites y Sims: ¡Juega con el futuro de tu ciudad!

*¿Qué nos dicen los datos satelitales sobre cambios en el ecosistema ecológico y el desarrollo urbano?*

Curso de 5 días (35 horas) donde los estudiantes crean una simulación interactiva basada en datos satelitales reales y un modelo mental ecológico-urbano, explorando las consecuencias de distintos escenarios de desarrollo en su ciudad.

**🌐 Sitio del curso:** https://rcavieses.github.io/sims_satelite_and_models/
**🧠 NotebookLM del curso:** https://notebooklm.google.com/notebook/e98d58f1-92c9-4bb8-ba0f-c38e1b6109aa (resumen en audio y preguntas sobre los materiales)
**📝 Carta descriptiva editable (Google Docs):** https://docs.google.com/document/d/10XGao9xnrxiKcDbR3FxOb4SU7lYVDQWX/edit?usp=sharing

> ⚠️ Este repo usa el placeholder `rcavieses/sims_satelite_and_models`. En cuanto crees el repositorio real en GitHub, corre `scripts/configurar_repo.sh <usuario> <repo>` para reemplazarlo en todos los archivos (ver [Configuración inicial](#-configuración-inicial-una-sola-vez)).

## 📚 Estructura del curso

| Sección | Contenido |
|---|---|
| 1. Imágenes Satelitales | Resoluciones, proyecciones, descarga y procesamiento de imágenes satelitales, cálculo de NDVI, análisis multitemporal |
| 2. Modelación y Gamificación | Diagrama causal, simulación numérica en Python, prototipo de videojuego, escenarios y mecánicas de juego |
| 3. Proyecto Final | Integración de datos reales, personalización, testing y presentación final |

Este repositorio contiene los **notebooks de la Sección 2 (Modelación y Gamificación)** y el arranque de la **Sección 3 (Proyecto Final)**.

## 📓 Notebooks

| # | Notebook | Sesión | Abrir |
|---|---|---|---|
| 1 | [`01_formalizacion_modelo_mental.ipynb`](notebooks/01_formalizacion_modelo_mental.ipynb) | Día 2 (tarde) — Formalizar el diagrama causal: variables, relaciones y ciclos | [![Abrir en Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1mypeAX8ECa4wprRZEPEoFcqTh9JvcA9G) · [Ver en Drive](https://drive.google.com/file/d/1mypeAX8ECa4wprRZEPEoFcqTh9JvcA9G/view?usp=sharing) |
| 2 | [`02_simulacion_numerica.ipynb`](notebooks/02_simulacion_numerica.ipynb) | Día 3 (mañana) — Simulación numérica del sistema ecológico-urbano en Python | [![Abrir en Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1g7cU6h3Zk5bddgj7ObUFdkQ2Xx-XJ2zH) · [Ver en Drive](https://drive.google.com/file/d/1g7cU6h3Zk5bddgj7ObUFdkQ2Xx-XJ2zH/view?usp=sharing) |
| 3 | [`03_prototipo_videojuego.ipynb`](notebooks/03_prototipo_videojuego.ipynb) | Día 3 (tarde) — Prototipo de la interfaz del videojuego (mapa interactivo) | [![Abrir en Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1SPewLWwFuaRrbnvnoVvlqjuMp_74hAEz) · [Ver en Drive](https://drive.google.com/file/d/1SPewLWwFuaRrbnvnoVvlqjuMp_74hAEz/view?usp=sharing) |
| 4 | [`04_escenarios_mecanicas.ipynb`](notebooks/04_escenarios_mecanicas.ipynb) | Día 4 (mañana) — Escenarios de desarrollo y mecánicas de juego interactivas | [![Abrir en Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1cLQ287TF0SnZhFNBOEjwni1LnWYRTzpl) · [Ver en Drive](https://drive.google.com/file/d/1cLQ287TF0SnZhFNBOEjwni1LnWYRTzpl/view?usp=sharing) |
| 5 | [`05_integracion_datos_satelitales.ipynb`](notebooks/05_integracion_datos_satelitales.ipynb) | Día 4 (tarde) — Integración de datos satelitales reales al videojuego | [![Abrir en Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1V0Z7SrM4IMzvN2k3NzX_sJJCu1vbQ6V2) · [Ver en Drive](https://drive.google.com/file/d/1V0Z7SrM4IMzvN2k3NzX_sJJCu1vbQ6V2/view?usp=sharing) |
| ✨ | [`06_actividad_extra_videojuego_html_ia.ipynb`](notebooks/06_actividad_extra_videojuego_html_ia.ipynb) | Actividad extra — Crear un videojuego en **HTML/CSS/JS** dirigiendo prompts a Claude o Gemini | [![Abrir en Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/rcavieses/sims_satelite_and_models/blob/main/notebooks/06_actividad_extra_videojuego_html_ia.ipynb) |

Cada notebook genera un archivo de salida (`modelo_mental.json`, `simulacion_ecosistema.py`, `proyecto_final_alpha.json`) que el siguiente notebook reutiliza automáticamente si está en la misma carpeta — así que estudiantes que trabajen en Colab deben subir/descargar esos archivos entre sesión y sesión (o trabajar todos los notebooks en la misma carpeta de Google Drive).

Los botones **"Abrir en Colab"** de los notebooks 1 a 5 usan las copias ya compartidas en Google Drive — funcionan de inmediato, sin depender de que el repo de GitHub esté configurado. El notebook 6 (actividad extra) todavía usa el link del repo de GitHub; una vez que subas el repo y corras `scripts/configurar_repo.sh`, ese botón también funcionará.

### ✨ Actividad extra: videojuego en HTML con IA

El notebook `06_actividad_extra_videojuego_html_ia.ipynb` es una alternativa (o complemento) al Notebook 3: en vez de programar el prototipo del videojuego en Python, los equipos diseñan **prompts** para que Claude o Gemini generen un videojuego completo en **HTML + CSS + JavaScript** (un solo archivo autocontenido). El notebook incluye:

- Una mini-lección de ingeniería de prompts para generación de código.
- Una celda que arma automáticamente un prompt personalizado a partir del `modelo_mental.json` de cada equipo.
- Previsualización del juego generado directamente dentro del notebook (sin salir a otra pestaña).
- Un registro de prompts y una bitácora de aprendizaje comparando "programar a mano" vs. "programar dirigiendo a una IA".

## 🗂️ Estructura del repositorio

```
.
├── README.md
├── .gitignore
├── notebooks/              # Los 5 notebooks de las Secciones 2 y 3, más la actividad extra (HTML + IA)
├── syllabus/                # Carta descriptiva del curso (docx + versión markdown)
├── docs/                    # Sitio de GitHub Pages (landing page del curso)
└── scripts/
    └── configurar_repo.sh   # Reemplaza el placeholder rcavieses/sims_satelite_and_models
```

## 🚀 Publicar el sitio en GitHub Pages

1. Sube este repo a GitHub (crea el repo vacío y haz push, o usa `gh repo create`).
2. Corre el script de configuración para reemplazar el placeholder por tu usuario/repo real:
   ```bash
   ./scripts/configurar_repo.sh tu-usuario nombre-del-repo
   git add -A && git commit -m "Configurar links del repo" && git push
   ```
3. En GitHub → **Settings → Pages**, selecciona:
   - **Source:** `Deploy from a branch`
   - **Branch:** `main` / carpeta **`/docs`**
4. Guarda. En unos minutos el sitio estará en `https://tu-usuario.github.io/nombre-del-repo/`.

## ⚙️ Configuración inicial (una sola vez)

Antes de compartir el repo o publicar Pages, reemplaza el placeholder `rcavieses/sims_satelite_and_models` (usado en los badges de Colab y en el link del sitio) por tu usuario y nombre de repo reales:

```bash
chmod +x scripts/configurar_repo.sh
./scripts/configurar_repo.sh tu-usuario nombre-del-repo
```

Esto actualiza automáticamente `README.md` y `docs/index.html`.

## 🧰 Requisitos para estudiantes

- Computadora con acceso a internet y navegador web
- Cuenta de Google (para Google Colab) **o** Python instalado localmente con VSCode
- No se requiere experiencia previa en programación — todos los conceptos se enseñan desde cero

## 📄 Licencia

Sin licencia definida todavía — agrega un archivo `LICENSE` (por ejemplo MIT para el código o CC-BY-4.0 para los materiales educativos) según cómo quieras que otros usen este contenido.
