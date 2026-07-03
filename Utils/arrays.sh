#!/usr/bin/env bash
# ABSL Component: Array Helpers

absl_util_array_len() {
  local arr=("$@")
  echo "${#arr[@]}"
}

absl_util_array_contains() {
  local search="${1}"
  shift
  local arr=("$@")
  for element in "${arr[@]}"; do
    [[ "$element" == "$search" ]] && return 0
  done
  return 1
}
