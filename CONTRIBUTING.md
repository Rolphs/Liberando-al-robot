# Guía de Contribución

Gracias por querer mejorar **Liberando al Robot**. Sigue estos pasos para colaborar:

## Flujo de trabajo con fork y branch

1. Haz un fork de este repositorio en tu cuenta.
2. Crea un branch descriptivo para tu cambio.
3. Realiza tus modificaciones y haz commits claros.
4. Abre un Pull Request hacia `main` explicando la motivación.

## Idioma y estilo

- Escribe en español.
- Usa sintaxis Markdown con encabezados (`#`, `##`) y listas con `-` o `1.`.
- Mantén un tono claro y conciso.

## Discusión de cambios

Para ideas grandes o dudas, abre un *issue*. Los Pull Requests también son bienvenidos para conversar ajustes específicos.

## Comprobaciones locales

Antes de enviar tu PR puedes verificar el estado de los archivos `.md` con estas herramientas:

1. Instala las dependencias:
   - `npm install -g markdownlint-cli`
   - `pip install codespell`
2. Ejecuta `./scripts/check.sh` para correr ambas herramientas o usa los comandos individuales:
   - `markdownlint '**/*.md'` para revisar estilo Markdown.
   - `codespell -q 3 --ignore-words .codespellignore` para encontrar errores ortográficos.
