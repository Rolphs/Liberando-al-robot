# Compilación del libro

Este proyecto se distribuye como una serie de capítulos en formato Markdown. A
continuación se explican los pasos para combinar estos capítulos y obtener el
libro en PDF o EPUB usando `pandoc`.

## Dependencias

- [Pandoc](https://pandoc.org/) 2.x o superior.
  - **Debian/Ubuntu:** `sudo apt-get install pandoc`
  - **macOS:** `brew install pandoc`
  - **Windows:** `winget install Pandoc`
- Para generar PDF es necesario contar con una distribución de LaTeX (por
ejemplo `texlive`). En Debian/Ubuntu se puede instalar con
  `sudo apt-get install texlive-full`.

## Orden de los capítulos

Los capítulos están en la carpeta `chapters/` y deben combinarse en el siguiente
orden:

1. `chapters/00_prologo.md`
2. `chapters/01_introduccion.md`
3. `chapters/02_muerte_de_la_idea_lineal.md`
4. `chapters/03_ingenieria_inversa_de_la_colaboracion.md`
5. `chapters/04_llms_como_infraestructura.md`
6. `chapters/05_pensar_como_red.md`
7. `chapters/06_el_rol_de_la_cultura.md`
8. `chapters/07_frameworks_y_protocolos.md`
9. `chapters/08_experimentos_abiertos.md`
10. `chapters/09_manifesto_final.md`
11. `chapters/10_referencias.md`

## Generar PDF

```bash
pandoc \
  chapters/00_prologo.md \
  chapters/01_introduccion.md \
  chapters/02_muerte_de_la_idea_lineal.md \
  chapters/03_ingenieria_inversa_de_la_colaboracion.md \
  chapters/04_llms_como_infraestructura.md \
  chapters/05_pensar_como_red.md \
  chapters/06_el_rol_de_la_cultura.md \
  chapters/07_frameworks_y_protocolos.md \
  chapters/08_experimentos_abiertos.md \
  chapters/09_manifesto_final.md \
  chapters/10_referencias.md \
  --toc --pdf-engine=xelatex \
  -o Liberando_al_Robot.pdf
```

## Generar EPUB

```bash
pandoc \
  chapters/00_prologo.md \
  chapters/01_introduccion.md \
  chapters/02_muerte_de_la_idea_lineal.md \
  chapters/03_ingenieria_inversa_de_la_colaboracion.md \
  chapters/04_llms_como_infraestructura.md \
  chapters/05_pensar_como_red.md \
  chapters/06_el_rol_de_la_cultura.md \
  chapters/07_frameworks_y_protocolos.md \
  chapters/08_experimentos_abiertos.md \
  chapters/09_manifesto_final.md \
  chapters/10_referencias.md \
  --toc \
  -o Liberando_al_Robot.epub
```

Estos comandos generan un PDF y un EPUB con tabla de contenidos. Se pueden
añadir opciones de `pandoc` según se requiera (tema, metadatos, etc.).
