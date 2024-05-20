#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#

# XDG base directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Zsh config root directory
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Default editors
export EDITOR=vim
export VISUAL=vim

# less history file
export LESSHISTFILE=$XDG_STATE_HOME/less/history

# fzf location
export FZF_BASE=$ZDOTDIR/.fzf

# z.lua's data cache
export _ZL_DATA=$XDG_DATA_HOME/zsh/.zlua

# Fix right indentation for prompt
export ZLE_RPROMPT_INDENT=0