#!/usr/bin/env bash
# ABSL Component: Data Validation

absl_util_is_numeric() {
  [[ "$1" =~ ^[0-9]+$ ]]
}

absl_util_is_email() {
  [[ "$1" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]
}

absl_util_is_path() {
  [[ -e "$1" ]]
}
