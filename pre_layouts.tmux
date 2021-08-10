#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/variables.sh"

tmux bind-key "${bind_key}" run-shell "$CURRENT_DIR/scripts/new_layout.sh"
