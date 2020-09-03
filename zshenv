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

# Python path
export PYTHONUSERBASE=~/Library

# Enable Git for iam4x/zsh-iterm-touchbar
export TOUCHBAR_GIT_ENABLED=true

# Make zsh always display actual casing
export CASE_SENSITIVE=true
