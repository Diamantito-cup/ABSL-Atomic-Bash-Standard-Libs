#!/usr/bin/env bash
# ABSL Component: Interactive Prompts

absl_ui_ask_yes_no() {
  local question="${1:-¿Deseas continuar?}"
  local default_val="${2:-N}" # Default to No

  local prompt_text="[y/n]"
  [[ "$default_val" == "y" ]] && prompt_text="[Y/n]"
  [[ "$default_val" == "n" ]] && prompt_text="[y/N]"

  read -p "❓ $question $prompt_text: " choice
  
  # Handle empty input
  [[ -z "$choice" ]] && choice="$default_val"

  case "$choice" in
    [yY]* ) return 0 ;;
    * ) return 1 ;;
  esac
}

absl_ui_ask_text() {
  local prompt="${1:-Introduce el valor}"
  local result
  read -p "📝 $prompt: " result
  echo "$result"
}
