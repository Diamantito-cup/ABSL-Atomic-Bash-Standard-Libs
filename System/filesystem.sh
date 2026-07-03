#!/usr/bin/env bash
# ABSL Component: Filesystem Helpers

absl::sys_fs_ensure_dir() {
  local dir="$1"
  if [[ ! -d "$dir" ]]; then
    absl::log_info "Creando directorio: $dir"
    mkdir -p "$dir"
  fi
}

absl::sys_fs_exists() {
  [[ -e "$1" ]]
}

absl::sys_fs_cleanup() {
  local path="$1"
  if [[ -d "$path" ]]; then
    absl::log_info "Limpiando directorio: $path"
    rm -rf "$path"
  elif [[ -f "$path" ]]; then
    rm -f "$path"
  fi
}
