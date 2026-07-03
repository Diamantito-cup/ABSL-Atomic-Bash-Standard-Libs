#!/usr/bin/env bash
# ABSL Component: Build & Packaging Utilities

absl_build_archive() {
  local source_dir="$1"
  local output_file="$2"
  local format="${3:-tar.gz}"

  if [[ ! -d "$source_dir" ]]; then
    absl_log_error "El directorio de origen '$source_dir' no existe."
    return 1
  fi

  absl_log_info "Empaquetando $source_dir en $output_file.$format..."
  
  case "$format" in
    "tar.gz") tar -czf "$output_file.$format" -C "$(dirname "$source_dir")" "$(basename "$source_dir")" ;;
    "tar.xz") tar -cJf "$output_file.$format" -C "$(dirname "$source_dir")" "$(basename "$source_dir")" ;;
    *) absl_log_error "Formato '$format' no soportado. Use tar.gz, tar.xz o tar.zst"; return 1 ;;
  esac

  if [[ $? -eq 0 ]]; then
    absl_log_success "Paquete creado: $output_file.$format"
  else
    absl_log_error "Error al crear el paquete."
    return 1
  fi
}

absl_build_arch_pkg() {
  local pkg_name="$1"
  local version="$2"
  local source_dir="$3"
  local out_dir="${4:-./out}"

  absl_sys_fs_ensure_dir "$out_dir"
  
  absl_log_info "Creando paquete Arch Linux: $pkg_name-$version..."
  
  # Simulación de creación de paquete .pkg.tar.zst (estándar Arch)
  # En un entorno real, esto podría llamar a makepkg o crear el archivo manualmente
  absl_build_archive "$source_dir" "$out_dir/$pkg_name-$version" "tar.zst"
}
