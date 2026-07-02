#!/usr/bin/env bash
# ABSL Component: String Manipulation

absl::util_to_upper() { echo "${1^^}"; }
absl::util_to_lower() { echo "${1,,}"; }
absl::util_trim() {
  local var="$1"
  var="${var#"${var%%[![:space:]]*}"}"
  var="${var%"${var##*[![:space:]]}"}"
  echo "$var"
}
