#!/usr/bin/env bash
# Generate default config file.

TMUX_POWERLINE_DIR_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export TMUX_POWERLINE_DIR_HOME

source "${TMUX_POWERLINE_DIR_HOME}/config/paths.sh"
source "${TMUX_POWERLINE_DIR_HOME}/config/defaults.sh"
source "${TMUX_POWERLINE_DIR_HOME}/config/shell.sh"
# shellcheck source=lib/config_file.sh
source "${TMUX_POWERLINE_DIR_LIB}/config_file.sh"

generate_default_config

\cp -a ${TMUX_POWERLINE_DIR_HOME}/themes/default.sh ${TMUX_POWERLINE_DIR_themes}/bingfeng-theme.sh

exit 0
