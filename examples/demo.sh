#!/usr/bin/env bash
# Demo de las capacidades de ABSL

source "$(dirname "${BASH_SOURCE[0]}")/../ABSL.sh"

absl_ui_banner
absl_log_info "Iniciando Demo de ABSL..."

# Probar System
absl_log_info "Detectando distribución..."
distro=$(absl_sys_get_distro)
absl_log_success "Tu distro es: $distro"

# Probar UI prompt
if absl_ui_ask_yes_no "Probamos el spinner?"; then
  absl_ui_spinner_start "Procesando datos mágicos..."
  sleep 3
  absl_ui_spinner_stop
  absl_log_success "Spinner terminado."
fi

# Probar Utils
nombre=$(absl_ui_ask_text "Escribe tu nombre en minúsculas")
absl_log_info "Nombre en mayúsculas: $(absl_util_to_upper "$nombre")"

if absl_util_is_numeric "12345"; then
  absl_log_success "12345 es un número."
fi

absl_log_info "Demo completada con éxito."
