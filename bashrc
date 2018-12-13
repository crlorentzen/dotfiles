# bashrc
PATH=${PATH}:${HOME}/scripts

if [ -f ${HOME}/.bash_aliases ]; then
  source ${HOME}/.bash_aliases
fi

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi
