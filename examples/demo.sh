#!/usr/bin/env bash
# Demo de las capacidades de ABSL

source "$(dirname "${BASH_SOURCE[0]}")/../ABSL.sh"

absl::ui_banner
absl::log_info "Iniciando Demo de ABSL..."

# Probar System
absl::log_info "Detectando distribución..."
distro=$(absl::sys_get_distro)
absl::log_success "Tu distro es: $distro"

# Probar UI prompt
if absl::ui_ask_yes_no "Probamos el spinner?"; then
  absl::ui_spinner_start "Procesando datos mágicos..."
  sleep 3
  absl::ui_spinner_stop
  absl::log_success "Spinner terminado."
fi

# Probar Utils
nombre=$(absl::ui_ask_text "Escribe tu nombre en minúsculas")
absl::log_info "Nombre en mayúsculas: $(absl::util_to_upper "$nombre")"

if absl::util_is_numeric "12345"; then
  absl::log_success "12345 es un número."
fi

absl::log_info "Demo completada con éxito."
