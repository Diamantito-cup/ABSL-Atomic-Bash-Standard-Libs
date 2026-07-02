#!/usr/bin/env bash
# ABSL Component: Core System Helpers

absl::sys_require_cmd() {
  local cmd="$1"
  if ! command -v "$cmd" &>/dev/null; then
    absl::log_error "DEPENDENCIA FALTANTE: El comando '$cmd' no está instalado."
    exit 1
  fi
}
