# AGENTS.md - Libs-Bash

## Overview
A collection of personal Bash libraries (ABSL - Atomic Bash Standard Libs) providing UI components and system helpers.

## Architecture
- **Core Loader**: `ABSL.sh` is the entry point. It exports `ABSL_ROOT_DIR` and sources all components.
- **Namespace**: All library functions are prefixed with `absl::` (e.g., `absl::ui_banner`).
- **Components**:
  - `UI/theme.sh`: Colors, banners, and logging functions (`absl::log_info`, `absl::log_success`, `absl::log_warn`).
  - `Utils/helpers.sh`: System requirement checks (`absl::sys_require_root`, `absl::sys_require_cmd`).

## Conventions
- **Loading**: To use the library in other scripts, source the root loader:
  `source /path/to/ABSL.sh`
- **Styling**: Use the exported color variables (e.g., `CLR_CYAN`, `CLR_RED`) in `UI/theme.sh` for consistent output.

## Verification
- No formal test suite. Verify changes by running consumer scripts in `Build/` (e.g., `Build/build_iso.sh`).
