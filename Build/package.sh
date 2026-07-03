#!/usr/bin/env bash
# Herramienta de Empaquetado ABSL

source "$(dirname "${BASH_SOURCE[0]}")/../ABSL.sh"

absl::ui_banner
absl::log_info "Gestor de Paquetes ABSL"

if [[ $# -lt 3 ]]; then
  echo "Uso: $0 <nombre_paquete> <version> <directorio_fuente> [directorio_salida]"
  exit 1
fi

PKG_NAME="$1"
VERSION="$2"
SRC_DIR="$3"
OUT_DIR="${4:-./out}"

absl::build_arch_pkg "$PKG_NAME" "$VERSION" "$SRC_DIR" "$OUT_DIR"
