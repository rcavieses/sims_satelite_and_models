#!/usr/bin/env bash
# Reemplaza el placeholder "TU_USUARIO/satelites-y-sims" por tu usuario/repo real de GitHub
# en README.md y docs/index.html.
#
# Uso:
#   ./scripts/configurar_repo.sh tu-usuario nombre-del-repo

set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <usuario-github> <nombre-repo>"
  exit 1
fi

USUARIO="$1"
REPO="$2"
PLACEHOLDER="TU_USUARIO/satelites-y-sims"
NUEVO="${USUARIO}/${REPO}"

# Ubicarse en la raíz del repo (un nivel arriba de scripts/)
cd "$(dirname "$0")/.."

ARCHIVOS=$(grep -rl "$PLACEHOLDER" --include="*.md" --include="*.html" . 2>/dev/null || true)

if [ -z "$ARCHIVOS" ]; then
  echo "No se encontró el placeholder '$PLACEHOLDER' — ¿ya lo habías reemplazado?"
  exit 0
fi

echo "$ARCHIVOS" | while read -r archivo; do
  sed -i.bak "s|$PLACEHOLDER|$NUEVO|g" "$archivo"
  rm -f "${archivo}.bak"
  echo "  actualizado: $archivo"
done

# También reemplaza el placeholder de usuario suelto (usado en el link del sitio en el README)
grep -rl "TU_USUARIO\.github\.io" --include="*.md" --include="*.html" . 2>/dev/null | while read -r archivo; do
  sed -i.bak "s|TU_USUARIO\.github\.io/satelites-y-sims|${USUARIO}.github.io/${REPO}|g" "$archivo"
  rm -f "${archivo}.bak"
  echo "  actualizado (link del sitio): $archivo"
done

echo ""
echo "Listo. Reemplazado '$PLACEHOLDER' por '$NUEVO' en todos los archivos .md y .html."
echo "Revisa los cambios con 'git diff' antes de hacer commit."
