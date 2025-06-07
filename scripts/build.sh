#!/bin/bash
set -euo pipefail
mkdir -p dist
files=(
  chapters/00_prologo.md
  chapters/01_introduccion.md
  chapters/02_muerte_de_la_idea_lineal.md
  chapters/03_ingenieria_inversa_de_la_colaboracion.md
  chapters/04_llms_como_infraestructura.md
  chapters/05_pensar_como_red.md
  chapters/06_el_rol_de_la_cultura.md
  chapters/07_frameworks_y_protocolos.md
  chapters/08_experimentos_abiertos.md
  chapters/09_manifesto_final.md
)

pandoc "${files[@]}" --toc --pdf-engine=xelatex -o dist/Liberando_al_Robot.pdf
pandoc "${files[@]}" --toc -o dist/Liberando_al_Robot.epub
pandoc "${files[@]}" --toc -o dist/Liberando_al_Robot.html
