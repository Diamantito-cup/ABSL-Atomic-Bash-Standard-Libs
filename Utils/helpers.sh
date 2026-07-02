#!/usr/bin/env bash
# ABSL Component: Core System Helpers

absl::sys_require_root() {
  if [[ $EUID -ne 0 ]]; then
    printf "${CLR_RED}❌ ERROR CRÍTICO: Este script requiere privilegios de superusuario (sudo).${CLR_RESET}\n" >&2
    exit 1
  fi
}

absl::sys_require_cmd() {
  local cmd="$1"
  if ! command -v "$cmd" &>/dev/null; then
    printf "${CLR_RED}❌ DEPENDENCIA FALTANTE: El comando '$cmd' no está instalado.${CLR_RESET}\n" >&2
    exit 1
  fi
}
