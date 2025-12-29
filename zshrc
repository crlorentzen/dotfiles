# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

OS_TYPE=$(uname -s)

# Reloads the history whenever you use it
#setopt share_history

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILE=${HOME}/.zhistory
HISTSIZE=1000
SAVEHIST=2000

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
#setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

#setopt inc_append_history
#setopt share_history

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
#shopt -s checkwinsize

case ${OS_TYPE} in
  Linux)
    echo "Linux"
    ssh-add -A
    ;;
  Darwin)
    ssh-add --apple-load-keychain
    ;;
esac

#[ -z "$PS1" ] && return
#PS1="%n@$(scutil --get ComputerName) %1~ %# "

PATH="/usr/local/sbin:$PATH"

if [ -f ${HOME}/.aliases ]; then
  source ${HOME}/.aliases
fi

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/Devel
  source /usr/local/bin/virtualenvwrapper.sh
fi


