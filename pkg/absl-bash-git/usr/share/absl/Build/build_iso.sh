#!/usr/bin/env bash

# Localizar la raíz y despertar al cerebro de ABSL
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../ABSL.sh"

# --- A PARTIR DE AQUÍ TIENES TODA LA API DISPONIBLE ---

# Dibujar la interfaz de Atomic Linux
absl_ui_banner_atomic

# Validar dependencias con los helpers de Utils/
absl_log_info "Verificando el entorno de compilación host..."
absl_sys_require_cmd "mkarchiso"
absl_sys_require_root

# Ejecutar el núcleo del motor
absl_log_success "Entorno listo. Desplegando mkarchiso..."
