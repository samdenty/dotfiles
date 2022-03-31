# Make VSCode the default editor
export EDITOR="code-insiders"

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY=~/.node_history
# Allow 32³ entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE='32768'
# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy'

# Increase zsh history size. Allow 32³ entries; the default is 500.
export HISTSIZE=32768
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.zsh_history

# Volta path
export VOLTA_HOME=~/.volta
# Python path
export PYTHONUSERBASE=~/Library

# Wakatime path
export ZSH_WAKATIME_BIN="/usr/local/bin/wakatime-cli"

# Enable Git for iam4x/zsh-iterm-touchbar
export TOUCHBAR_GIT_ENABLED=true

# Make zsh always display actual casing
export CASE_SENSITIVE=true
. "$HOME/.cargo/env"

path+=('~/.cargo/bin' '~/.local/bin' $VOLTA_HOME/bin)
