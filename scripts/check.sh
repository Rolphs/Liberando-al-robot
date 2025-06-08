#!/bin/bash
set -euo pipefail

markdownlint '**/*.md'
codespell -q 3 --ignore-words .codespellignore
