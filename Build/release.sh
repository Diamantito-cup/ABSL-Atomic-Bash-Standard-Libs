#!/usr/bin/env bash
# Herramienta de Releases ABSL

source "$(dirname "${BASH_SOURCE[0]}")/../ABSL.sh"

absl_ui_banner
absl_log_info "Gestor de Releases ABSL"

if [[ $# -lt 1 ]]; then
  echo "Uso: $0 <version> [mensaje_release]"
  exit 1
fi

VERSION="$1"
MSG="${2:-Release estable $VERSION}"

absl_log_info "Preparando release v$VERSION..."

# 1. Crear Tag en Git
absl_log_info "Creando tag v$VERSION en Git..."
git tag -a "v$VERSION" -m "$MSG"

# 2. Simular subida
absl_log_info "Sincronizando tags con el remoto..."
git push origin "v$VERSION"

absl_log_success "Release v$VERSION desplegada correctamente."
