#!/usr/bin/env bash
# ABSL Core Dispatcher

absl() {
  local action="$1"
  shift

  case "$action" in
    core)
      local func_path="$1"
      shift
      # Limpiar paréntesis si el usuario los usa por estética: (sys:fs:cleanup) -> sys:fs:cleanup
      local clean_path="${func_path//[\(\)]/}"
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
