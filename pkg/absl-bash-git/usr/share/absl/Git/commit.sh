#!/usr/bin/env bash
# ABSL Component: Git Helpers

absl_git_commit() {
  local msg="$1"
  if [[ -z "$msg" ]]; then
    msg=$(absl_ui_ask_text "Mensaje del commit")
  fi
  
  git add .
  git commit -m "$msg"
}

absl_git_sync() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD)
  
  absl_log_info "Sincronizando con la rama '$branch' en el repositorio remoto..."
  git pull origin "$branch" && git push origin "$branch"
}
