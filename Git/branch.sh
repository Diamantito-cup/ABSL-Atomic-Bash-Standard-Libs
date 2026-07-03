#!/usr/bin/env bash
# ABSL Component: Git Branch Management

absl_git_branch_create() {
  local name="$1"
  git checkout -b "$name"
}

absl_git_branch_list() {
  git branch
}
