#!/usr/bin/env bash
# ABSL Component: UI Theme & Aesthetics

export CLR_RESET="\033[0m"
export CLR_CYAN="\033[1;36m"
export CLR_GREEN="\033[1;32m"
export CLR_YELLOW="\033[1;33m"
export CLR_RED="\033[1;31m"
export CLR_MAGENTA="\033[1;35m"
export CLR_BG_DARK="\033[48;5;234m"

absl::ui_banner() {
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

absl::log_info() { printf "${CLR_CYAN}[+]${CLR_RESET} %s\n" "$1"; }
absl::log_success() { printf "${CLR_GREEN}✔ %s${CLR_RESET}\n" "$1"; }
absl::log_warn() { printf "${CLR_YELLOW}[!] %s${CLR_RESET}\n" "$1"; }
