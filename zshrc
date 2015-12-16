
# zgen
# ---------------------------------------------------------------

source $HOME/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then

  # zgen will load oh-my-zsh and download it if required
  zgen oh-my-zsh

  # oh-my-zsh plugins
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/vi-mode
  zgen oh-my-zsh plugins/z

  # https://github.com/zsh-users/zsh-completions
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-syntax-highlighting

  zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train

  zgen save
fi

# Load my dotfiles after
for file in ~/.{extra,aliases}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Exports
# ---------------------------------------------------------------

# Theme
export BULLETTRAIN_RUBY_SHOW=false
export BULLETTRAIN_NVM_SHOW=true

# Make vim the default editor
export EDITOR="vim"

# vi mode
export MODE_INDICATOR="******** [NORMAL] ********"
bindkey '^r' history-incremental-search-backward

# LESS
# Syntax highlighting
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS='-RJMI'

# Larger history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Prefer US English and use UTF-8
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Force terminal 256 colour with iterm
export TERM='screen-256color'

# Node dev
export NODE_ENV=development

# Stop z polluting the home dir
export _Z_DATA="$HOME/.zdata/.z"

# fzf
# https://github.com/junegunn/fzf
# ---------------------------------------------------------------

# Setting ag as the default source for fzf - include hidden files
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Default options
export FZF_DEFAULT_OPTS="--multi --inline-info"
# tmux pane height
export FZF_TMUX_HEIGHT=20%
# Shell integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PATH
# ---------------------------------------------------------------

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="~/.rbenv/shims:$PATH"
export PATH="/usr/local/share/git-core/contrib/diff-highlight:$PATH"

# GO
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# Misc
# ---------------------------------------------------------------

source ~/git-hub/init
source ~/.nvm/nvm.sh
eval "$(rbenv init -)"
eval "$(scmpuff init -s --aliases=false)"
source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
