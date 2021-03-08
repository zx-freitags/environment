# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Fix colors for vim running in tmux
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
