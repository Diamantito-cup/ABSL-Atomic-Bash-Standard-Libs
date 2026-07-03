#!/usr/bin/env bash
# ABSL Component: Banners and Visual Identity

# Banner Oficial de ABSL
absl_ui_banner_absl() {
  clear
  printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
  printf "${CLR_MAGENTA}  █████╗ ██████╗ ██████╗ ╚██╗    ██╗  ██████╗ ${CLR_CYAN}██████╗ ██████╗ ███████╗${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ██╔══██╗██╔══██╗██╔══██╗ ╚██╗  ██╔╝ ██╔════╝ ${CLR_CYAN}██╔══██╗██╔══██╗██╔════╝${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ███████║██████╔╝██████╔╝  ╚██╗██╔╝  ██║      ${CLR_CYAN}██████╔╝██████╔╝█████╗  ${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ██╔══██║██╔══██╗██╔══██╗   ╚██╔╝    ██║      ${CLR_CYAN}██╔══██╗██╔══██╗██╔══╝  ${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ██║  ██║██║  ██║██║  ██║    ██║     ██████╗   ${CLR_CYAN}██║  ██║██║  ██║███████╗${CLR_RESET}\n"
  printf "${CLR_MAGENTA} ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝     ╚═════╝   ${CLR_CYAN}╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝${CLR_RESET}\n"
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
  
  clear
  printf "${color} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
  printf "${color}                                  %s                                  ${CLR_RESET}\n" "$text"
  printf "${color} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"
}
