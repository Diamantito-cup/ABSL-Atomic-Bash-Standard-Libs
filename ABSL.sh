#!/usr/bin/env bash
# =============================================================================
# ABSL - Atomic Bash Standard Libs (Core Loader)
# =============================================================================

# Determinar de forma asertiva la raíz del proyecto atomic-linux
export ABSL_ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Cargar los componentes desde sus respectivas carpetas separadas
if [[ -f "${ABSL_ROOT_DIR}/UI/theme.sh" ]]; then
  source "${ABSL_ROOT_DIR}/UI/theme.sh"
else
  echo "❌ Error crítico de ABSL: No se pudo cargar UI/theme.sh" >&2
  exit 1
fi

if [[ -f "${ABSL_ROOT_DIR}/Utils/helpers.sh" ]]; then
  source "${ABSL_ROOT_DIR}/Utils/helpers.sh"
else
  echo "❌ Error crítico de ABSL: No se pudo cargar Utils/helpers.sh" >&2
  exit 1
fi

export ABSL_LOADED=1
