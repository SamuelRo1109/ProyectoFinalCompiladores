#!/usr/bin/env bash
# Configura GitFlow en GitHub para el proyecto Domus.
#   - crea la rama develop desde main y la deja como rama por defecto
#   - protege main y develop: solo PR, 1 aprobación, descarta aprobaciones obsoletas,
#     sin force-push ni borrado, y aplica también a administradores
#   - invita a los colaboradores con permiso de escritura
#
# Uso (desde la raíz del repo, con main ya subido):
#   bash scripts/configurar_github.sh <owner> <repo> [colaborador1] [colaborador2] ...
# Requisitos: git, gh autenticado (gh auth login).
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Uso: bash scripts/configurar_github.sh <owner> <repo> [colaboradores...]" >&2
  exit 1
fi

OWNER="$1"; REPO="$2"; shift 2
FULL="$OWNER/$REPO"

gh auth status >/dev/null 2>&1 || { echo "Primero ejecuta: gh auth login" >&2; exit 1; }

echo "==> Verificando que main existe en GitHub"
gh api "repos/$FULL/branches/main" >/dev/null 2>&1 || {
  echo "No encuentro la rama main en $FULL. Haz primero: git push -u origin main" >&2; exit 1; }

echo "==> Creando develop desde main (si no existe)"
git fetch origin
if git ls-remote --exit-code --heads origin develop >/dev/null 2>&1; then
  echo "    develop ya existe en el remoto"
else
  git branch develop origin/main 2>/dev/null || true
  git push -u origin develop
fi

echo "==> develop como rama por defecto"
gh repo edit "$FULL" --default-branch develop

proteger() {
  local rama="$1"
  echo "==> Protegiendo $rama"
  if ! gh api -X PUT "repos/$FULL/branches/$rama/protection" \
      -H "Accept: application/vnd.github+json" --input - >/dev/null <<'JSON'
{
  "required_status_checks": null,
  "enforce_admins": true,
  "required_pull_request_reviews": {
    "required_approving_review_count": 1,
    "dismiss_stale_reviews": true,
    "require_code_owner_reviews": false
  },
  "restrictions": null,
  "allow_force_pushes": false,
  "allow_deletions": false
}
JSON
  then
    echo "    No se pudo proteger $rama." >&2
    echo "    Si el repo es PRIVADO necesitas GitHub Pro (gratis con GitHub Student Developer Pack)" >&2
    echo "    o hacer el repo público: gh repo edit $FULL --visibility public --accept-visibility-change-consequences" >&2
    return 1
  fi
}

proteger main
proteger develop

for colaborador in "$@"; do
  echo "==> Invitando a $colaborador (permiso push)"
  gh api -X PUT "repos/$FULL/collaborators/$colaborador" -f permission=push >/dev/null
done

echo
echo "Listo. Ramas protegidas: main, develop. Rama por defecto: develop."
echo "Siguiente paso: git checkout develop && git pull && git checkout -b feature/s1-estructura-semantica"
