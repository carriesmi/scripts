#history auto complete
#to get your keystroke type ctrl+v then press the key to get the keystroke
#then replace ^[ with \e here.
bind '"\e[1;5A": history-search-backward'
bind '"\e[1;5B": history-search-forward'

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
# ignore cmd starting with space and ignore matching with previous cmd
HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%h %d %H:%M:%S "

# append to the history file, don't overwrite it
shopt -s histappend

# instantly save history
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000000
HISTFILESIZE=20000000
