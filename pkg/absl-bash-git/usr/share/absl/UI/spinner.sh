#!/usr/bin/env bash
# ABSL Component: Loading Spinners

absl_ui_spinner_start() {
  local msg="${1:-Cargando}"
  # Start spinner in background
  (
    local spin='-\|/'
    while true; do
      local i=0
      while (( i < 4 )); do
        printf "\r${CLR_CYAN}[%c]${CLR_RESET} %s" "${spin:$i:1}" "$msg"
        sleep 0.1
        ((i++))
      done
    done
  ) &
  SPINNER_PID=$!
}

absl_ui_spinner_stop() {
  if [[ -n $SPINNER_PID ]]; then
    kill $SPINNER_PID &>/dev/null
    wait $SPINNER_PID 2>/dev/null
    printf "\r\033[K" # Clear the entire line
    unset SPINNER_PID
  fi
}
