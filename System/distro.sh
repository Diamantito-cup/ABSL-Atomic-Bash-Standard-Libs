#!/usr/bin/env bash
# ABSL Component: Distro Detection

absl::sys_get_distro() {
  if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    echo "$ID"
  else
    echo "unknown"
  fi
}

absl::sys_is_arch() {
  [[ "$(absl::sys_get_distro)" == "arch" ]]
}
