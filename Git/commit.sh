#!/usr/bin/env bash
# ABSL Component: Git Helpers

absl::git_commit() {
  local msg="$1"
  if [[ -z "$msg" ]]; then
    msg=$(absl::ui_ask_text "Mensaje del commit")
  fi
  
  git add .
  git commit -m "$msg"
}

absl::git_sync() {
  absl::log_info "Sincronizando con el repositorio remoto..."
  git pull origin main && git push origin main
}
