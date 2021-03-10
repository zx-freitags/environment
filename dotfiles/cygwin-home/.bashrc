# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Fix colors for vim running in tmux
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi

# History Options
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# history length
HISTSIZE=1000
HISTFILESIZE=200000
export PROMPT_COMMAND='history -a'

# fancy prompt, non-color
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '

# Aliases
alias ll='ls -lah'
alias tmx='tmux -2 -f tmux.conf'
alias ccat='pygmentize -g'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then    
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'    
fi
