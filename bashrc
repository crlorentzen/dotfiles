# bashrc
PATH=${PATH}:${HOME}/scripts

if [ -f ${HOME}/.bash_aliases ]; then
  source ${HOME}/.bash_aliases
fi

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi


if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)"
  # Add SSH keys interactively
  function ssh-add-interactive {
    echo "Adding SSH keys to the agent..."
    ssh-add -l > /dev/null 2>&1
    if [ $? -ne 0 ]; then
      ssh-add
    fi
  }
  # Call the function to add keys on startup
  ssh-add-interactive
fi
