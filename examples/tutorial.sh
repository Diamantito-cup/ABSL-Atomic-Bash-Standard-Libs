#!/usr/bin/env bash
# 📚 GUÍA INTERACTIVA de ABSL (Atomic Bash Standard Libs)

# Importar la librería
source "$(dirname "${BASH_SOURCE[0]}")/../ABSL.sh"

VERSION="0.1-Dev"
FUNC_COUNT=$(declare -F | grep -c "^absl_")

# Usar el banner oficial de la librería
absl_ui_banner_absl

printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
printf "${CLR_GREEN}  📦 Módulos disponibles:${CLR_RESET}\n"
printf "  ✔ UI\n  ✔ Logs\n  ✔ System\n  ✔ Utils\n  ✔ Git\n  ✔ Build\n"
printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
printf "${CLR_MAGENTA}  Funciones cargadas:${CLR_RESET} %s\n" "$FUNC_COUNT"
printf "${CLR_MAGENTA}  Versión:${CLR_RESET} %s\n" "$VERSION"
printf "${CLR_MAGENTA}  Documentación:${CLR_RESET} README.md, examples/, Wiki\n"
printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
echo ""

# --- MENÚ INTERACTIVO ---
while true; do
  printf "${CLR_YELLOW}Selecciona un módulo para probar (o 'q' para salir):${CLR_RESET}\n"
  printf "1) UI    2) Logs    3) System    4) Utils    5) Git    6) Build    q) Salir\n"
  read -p "❯ " choice

  case "$choice" in
  1)
    echo -e "\n--- 🎨 Demo UI ---"
    if absl_ui_ask_yes_no "Ejecutar spinner?"; then
      absl_ui_spinner_start "Animando interfaz..."
      sleep 2
      absl_ui_spinner_stop
      absl_log_success "UI OK"
    fi
    ;;
  2)
    echo -e "\n--- 📝 Demo Logs ---"
    absl_log_info "Información"
    absl_log_success "Éxito"
    absl_log_warn "Advertencia"
    absl_log_error "Error"
    ;;
  3)
    echo -e "\n--- ⚙️ Demo System ---"
    absl_log_info "Distro: $(absl_sys_get_distro)"
    absl_sys_fs_ensure_dir "/tmp/absl_test"
    absl_log_success "Directorio asegurado."
    ;;
  4)
    echo -e "\n--- 🛠️ Demo Utils ---"
    absl_log_info "Texto: $(absl_util_to_upper "absl es genial")"
    echo "Operaciones Enteras:"
    absl_log_info "Suma: 2+2 = $(absl_util_math_add 2 2)"
    absl_log_info "Potencia: 2^3 = $(absl_util_math_pow 2 3)"
    absl_log_info "Modulo: 10%3 = $(absl_util_math_mod 10 3)"

    echo "Operaciones de Precisión (bc):"
    if absl_sys_pkg_installed "bc"; then
      absl_log_info "División precisa: 10/3 = $(absl_util_math_precise "10/3" 4)"
      absl_log_info "Cálculo complejo: (5*2.5)+1.2 = $(absl_util_math_precise "(5*2.5)+1.2")"
    else
      absl_log_warn "Saltando demo de precisión: 'bc' no está instalado."
      absl_log_info "Tip: Puedes instalarlo con 'sudo pacman -S bc'"
    fi
    ;;

  5)
    echo -e "\n--- 🌿 Demo Git ---"
    absl_log_info "Funciones: absl_git_commit, absl_git_sync, absl_git_branch_create"
    absl_log_warn "Ejecuta esto dentro de un repo git para probar."
    ;;
  6)
    echo -e "\n--- 📦 Demo Build ---"
    absl_log_info "Probando empaquetado simulado..."
    # Creamos un archivo temporal para empaquetar
    mkdir -p /tmp/absl_pkg_test && touch /tmp/absl_pkg_test/file.txt
    absl_build_archive "/tmp/absl_pkg_test" "/tmp/absl_test_pkg" "tar.gz"
    absl_sys_fs_cleanup "/tmp/absl_pkg_test"
    absl_sys_fs_cleanup "/tmp/absl_test_pkg.tar.gz"
    ;;
  q)
    printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
    printf "${CLR_GREEN}  Gracias por probar ABSL.${CLR_RESET}\n\n"
    printf "${CLR_MAGENTA}  Repositorio:${CLR_RESET} https://github.com/Diamantito-cup/ABSL-Atomic-Bash-Standard-Libs\n\n"
    printf "${CLR_MAGENTA}  Versión:${CLR_RESET} %s\n\n" "$VERSION"
    printf "${CLR_GREEN}  ¡Hasta luego!${CLR_RESET}\n"
    printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
    exit 0
    ;;

  *)
    absl_log_error "Opción no válida."
    ;;
  esac
  echo -e "\n${CLR_CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${CLR_RESET}\n"
done
