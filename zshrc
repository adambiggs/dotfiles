# ============================================================================
# ZSH Configuration - Main Entry Point
# ============================================================================
# This file orchestrates loading of core and interactive configurations.
# 
# Structure:
#   ~/.zshrc_core        - Essential config for all shells (AI agents, scripts, etc.)
#   ~/.zshrc_interactive - UI features for human interactive shells only
#
# For AI coding agents: Configure them to source only ~/.zshrc_core
# ============================================================================

# Always load core configuration (env vars, PATH, essential aliases/functions)
[ -f ~/.zshrc_core ] && source ~/.zshrc_core

# Only load interactive features for human users
# Check if this is an interactive shell
if [[ $- == *i* ]]; then
  [ -f ~/.zshrc_interactive ] && source ~/.zshrc_interactive
fi
