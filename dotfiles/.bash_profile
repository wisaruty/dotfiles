# vim:set fdm=marker:

if [ -f "$HOME/.bashrc" ]; then
    source $HOME/.bashrc
fi

if [ -f "$HOME/.env.common" ]; then
    source $HOME/.env.common
fi

export HISTSIZE=300000
export PS1="{\@} \u@\H in [\W]\n \\$ "
