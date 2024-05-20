#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

autoload -U colors && colors

# Clone antidote if necessary
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
    git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Generate plugins file if necessary
[[ -f ${ZDOTDIR:-~}/.zsh_plugins.txt ]] || touch ${ZDOTDIR:-~}/.zsh_plugins.txt

# Initialize Antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Initialize starship
eval "$(starship init zsh)"
