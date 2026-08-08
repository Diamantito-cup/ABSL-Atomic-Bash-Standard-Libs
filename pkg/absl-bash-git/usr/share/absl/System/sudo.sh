#!/usr/bin/env bash
# ABSL Component: Root/Sudo Privileges

absl_sys_require_root() {
  if [[ $EUID -ne 0 ]]; then
    absl_log_error "Este script requiere privilegios de superusuario (sudo)."
    exit 1
  fi
}

absl_sys_ensure_root() {
  if [[ $EUID -ne 0 ]]; then
    absl_log_info "Re-ejecutando script con sudo..."
    exec sudo "$0" "$@"
  fi
}
