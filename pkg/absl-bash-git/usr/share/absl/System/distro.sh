#!/usr/bin/env bash
# ABSL Component: Distro Detection

absl_sys_get_distro() {
  if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    echo "$ID"
  else
    echo "unknown"
  fi
}

absl_sys_is_arch() {
  [[ "$(absl_sys_get_distro)" == "arch" ]]
}
