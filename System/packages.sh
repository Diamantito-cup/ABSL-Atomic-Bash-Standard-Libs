#!/usr/bin/env bash
# ABSL Component: Package Management & Dependency Checks

absl::sys_pkg_installed() {
  command -v "$1" &>/dev/null
}

absl::sys_require_pkg() {
  local pkg="$1"
  local install_cmd="${2:-sudo pacman -S}" # Default to pacman (Arch)

  if ! absl::sys_pkg_installed "$pkg"; then
    absl::log_warn "La dependencia '$pkg' no está instalada."
    
    read -p "❓ ¿Deseas intentar instalarla ahora? (s/N): " choice
    case "$choice" in 
      [sS]* ) 
        absl::log_info "Instalando $pkg..."
        if $install_cmd "$pkg"; then
          absl::log_success "Dependencia '$pkg' instalada correctamente."
        else
          absl::log_error "No se pudo instalar '$pkg'. Por favor, instálalo manualmente."
          exit 1
        fi
        ;;
      * )
        absl::log_error "Dependencia '$pkg' faltante. El script no puede continuar."
        exit 1
        ;;
    esac
  fi
}
