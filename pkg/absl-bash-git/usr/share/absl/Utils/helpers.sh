#!/usr/bin/env bash
# ABSL Component: Core System Helpers

absl_sys_require_cmd() {
  local cmd="$1"
  if ! command -v "$cmd" &>/dev/null; then
    absl_log_error "DEPENDENCIA FALTANTE: El comando '$cmd' no está instalado."
    exit 1
  fi
}
