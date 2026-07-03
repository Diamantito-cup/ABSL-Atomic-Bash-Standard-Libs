#!/usr/bin/env bash
# ABSL Component: Logging and Feedback

absl_log_info() { printf "${CLR_CYAN}[+]${CLR_RESET} %s\n" "$1"; }
absl_log_success() { printf "${CLR_GREEN}✔ %s${CLR_RESET}\n" "$1"; }
absl_log_warn() { printf "${CLR_YELLOW}[!] %s${CLR_RESET}\n" "$1"; }
absl_log_error() { printf "${CLR_RED}❌ %s${CLR_RESET}\n" "$1" >&2; }
