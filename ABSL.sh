#!/usr/bin/env bash
# =============================================================================
# ABSL - Atomic Bash Standard Libs (Core Loader)
# =============================================================================

# Determinar de forma asertiva la raíz del proyecto atomic-linux
export ABSL_ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Cargar los componentes desde sus respectivas carpetas
# 1. Logs y Colores (Base)
source "${ABSL_ROOT_DIR}/Logs/colors.sh"
source "${ABSL_ROOT_DIR}/Logs/logger.sh"

# 2. UI
source "${ABSL_ROOT_DIR}/UI/banner.sh"
source "${ABSL_ROOT_DIR}/UI/theme.sh"
source "${ABSL_ROOT_DIR}/UI/prompt.sh"
source "${ABSL_ROOT_DIR}/UI/spinner.sh"

# 3. System
source "${ABSL_ROOT_DIR}/System/sudo.sh"
source "${ABSL_ROOT_DIR}/System/distro.sh"
source "${ABSL_ROOT_DIR}/System/packages.sh"

# 4. Utils
source "${ABSL_ROOT_DIR}/Utils/strings.sh"
source "${ABSL_ROOT_DIR}/Utils/validation.sh"
source "${ABSL_ROOT_DIR}/Utils/helpers.sh"

# 5. Git
source "${ABSL_ROOT_DIR}/Git/commit.sh"


export ABSL_LOADED=1
