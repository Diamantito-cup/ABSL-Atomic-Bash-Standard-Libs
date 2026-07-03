#!/usr/bin/env bash
# ABSL Component: Math & Algebraic Helpers

# --- Operaciones Enteras (Nativas de Bash) ---
absl::util_math_add() { echo "$(($1 + $2))"; }
absl::util_math_sub() { echo "$(($1 - $2))"; }
absl::util_math_mul() { echo "$(($1 * $2))"; }
absl::util_math_div() { echo "$(($1 / $2))"; }
absl::util_math_mod() { echo "$(($1 % $2))"; }
absl::util_math_pow() { echo "$(($1 ** $2))"; }

# --- Operaciones de Precisión (Requiere 'bc') ---
absl::util_math_precise() {
  local expr="$1"
  local scale="${2:-2}" # Precisión decimal por defecto: 2
  
  if ! command -v bc &>/dev/null; then
    absl::log_error "El comando 'bc' es necesario para cálculos de precisión."
    return 1
  fi
  
  echo "scale=$scale; $expr" | bc -l
}
