#!/usr/bin/env bash
# =============================================================================
# ABSL - Atomic Bash Standard Libs (Core Loader & Dispatcher)
# =============================================================================

# Determinar la raíz del proyecto
export ABSL_ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# -----------------------------------------------------------------------------
# 1. Carga de Componentes
# -----------------------------------------------------------------------------

# Logs y Colores (Base)
source "${ABSL_ROOT_DIR}/Logs/colors.sh"
source "${ABSL_ROOT_DIR}/Logs/logger.sh"

# UI
source "${ABSL_ROOT_DIR}/UI/banner.sh"
source "${ABSL_ROOT_DIR}/UI/theme.sh"
source "${ABSL_ROOT_DIR}/UI/prompt.sh"
source "${ABSL_ROOT_DIR}/UI/spinner.sh"

# System
source "${ABSL_ROOT_DIR}/System/sudo.sh"
source "${ABSL_ROOT_DIR}/System/distro.sh"
source "${ABSL_ROOT_DIR}/System/packages.sh"
source "${ABSL_ROOT_DIR}/System/filesystem.sh"

# Build Utils
source "${ABSL_ROOT_DIR}/Build/build_utils.sh"

# Utils
source "${ABSL_ROOT_DIR}/Utils/strings.sh"
source "${ABSL_ROOT_DIR}/Utils/validation.sh"
source "${ABSL_ROOT_DIR}/Utils/arrays.sh"
source "${ABSL_ROOT_DIR}/Utils/math.sh"
source "${ABSL_ROOT_DIR}/Utils/helpers.sh"

# Git
source "${ABSL_ROOT_DIR}/Git/commit.sh"
source "${ABSL_ROOT_DIR}/Git/branch.sh"

# -----------------------------------------------------------------------------
# 2. Core Dispatcher (La capa de belleza)
# -----------------------------------------------------------------------------

absl() {
  local action="$1"
  shift

  case "$action" in
    core)
      local func_path="$1"
      shift
      # Limpiar paréntesis obligatorios para la sintaxis programática: (sys:fs:cleanup) -> sys:fs:cleanup
      local clean_path="${func_path//[\(\)]/}"
      
      if [[ "$func_path" != *"("* ]]; then
        absl_log_warn "Sintaxis sugerida: use paréntesis para llamar a core, ej: absl core \"(sys:fs:cleanup)\""
      fi

      # Convierte "sys:fs:cleanup" -> "absl_sys_fs_cleanup"
      local bash_func="absl_${clean_path//:/_}"
      
      if declare -f "$bash_func" > /dev/null; then
        "$bash_func" "$@"
      else
        absl_log_error "La función core '$func_path' no existe (buscada como $bash_func)."
        return 1
      fi
      ;;
    *)
      absl_log_error "Acción de ABSL no reconocida: $action"
      return 1
      ;;
  esac
}

export ABSL_LOADED=1
