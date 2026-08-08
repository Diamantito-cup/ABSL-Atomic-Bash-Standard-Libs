#!/usr/bin/env bash
# ABSL Component: Banners and Visual Identity

# Banner Oficial de ABSL
absl_ui_banner_absl() {
  clear
  printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
  printf "${CLR_MAGENTA}  █████╗ ██████╗ ███████╗██╗     ${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ██╔══██╗██╔══██╗██╔════╝██║     ${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ███████║██████╔╝███████╗██║     ${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ██╔══██║██╔══██╗╚════██║██║     ${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ██║  ██║███████║██╔══██║███████╗${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ╚═╝  ╚═╝╚═════╝╚══════╝╚══════╝${CLR_RESET}\n"
  printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
  printf "${CLR_MAGENTA}                Atomic Bash Standard Libs - The Power of Modularity ${CLR_RESET}\n"
  printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
}

# Banner de Atomic Linux (Legacy/Distro)
absl_ui_banner_atomic() {
  clear
  printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
  printf "${CLR_MAGENTA}   █████╗ ████████╗ ██████╗ ███╗   ███╗██╗ ██████╗     ${CLR_CYAN}██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗${CLR_RESET}\n"
  printf "${CLR_MAGENTA}  ██╔══██╗╚══██╔══╝██╔═══██╗████╗ ████║██║██╔════╝     ${CLR_CYAN}██║     ██║████╗  ██║██║   ██║╚██╗██╔╝${CLR_RESET}\n"
  printf "${CLR_MAGENTA}  ███████║   ██║   ██║   ██║██╔████╔██║██║██║          ${CLR_CYAN}██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ ${CLR_RESET}\n"
  printf "${CLR_MAGENTA}  ██╔══██║   ██║   ██║   ██║██║╚██╔╝██║██║██║          ${CLR_CYAN}██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ ${CLR_RESET}\n"
  printf "${CLR_MAGENTA}  ██║  ██║   ██║   ╚██████╔╝██║ ╚═╝ ██║██║╚██████╗     ${CLR_CYAN}███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗${CLR_RESET}\n"
  printf "${CLR_MAGENTA}  ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝ ╚═════╝     ${CLR_CYAN}╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝${CLR_RESET}\n"
  printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
}

# Generador de Banner Personalizado
absl_ui_banner_custom() {
  local text="${1:-Custom Banner}"
  local color="${2:-$CLR_CYAN}"
  local style="${3:-single}" # single o double
  local text2="${4:-}"
  local color2="${5:-$color}"
  
  local line="━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  [[ "$style" == "double" ]] && line="════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"

  clear
  printf "${color} ${line} ${CLR_RESET}\n"
  
  # Si figlet está instalado, generamos arte ASCII
  if command -v figlet >/dev/null 2>&1; then
    local font_args=()
    # Usamos la fuente bundled de ABSL si existe
    [[ -f "${ABSL_ROOT_DIR}/UI/ansishadow.flf" ]] && font_args=("-f" "${ABSL_ROOT_DIR}/UI/ansishadow.flf")
    
    if [[ -n "$text2" ]]; then
      # Modo dos colores lado a lado
      paste <(figlet "${font_args[@]}" "$text ") \
            <(figlet "${font_args[@]}" "$text2") | while IFS=$'\t' read -r part1 part2; do
        [[ -n "${part1// /}${part2// /}" ]] && printf "${color}%s${CLR_RESET}${color2}%s${CLR_RESET}\n" "$part1" "$part2"
      done
    else
      # Modo un solo color
      figlet "${font_args[@]}" "$text" | while IFS= read -r fline; do
        [[ -n "$fline" ]] && printf "${color}%s${CLR_RESET}\n" "$fline"
      done
    fi
  else
    # Fallback si no hay figlet
    if [[ -n "$text2" ]]; then
      printf "${color}                  %s                  ${color2}%s                  ${CLR_RESET}\n" "$text" "$text2"
    else
      printf "${color}                                  %s                                  ${CLR_RESET}\n" "$text"
    fi
  fi
  
  printf "${color} ${line} ${CLR_RESET}\n"
}
