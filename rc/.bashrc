## HIST
HISTCONTROL=ignoreboth
HISTTIMEFORMAT='%F %T '
HISTSIZE=10000
HISTFILESIZE=50000

## ALIAS
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias st='stty erase ^H'
alias execCopy='docker exec -it fd925e298044 bash'

## PROMPT
if [ -x /usr/local/bin/git-completion.bash ]; then
    source /usr/local/bin/git-completion.bash
    source /usr/local/bin/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWUPSTREAM=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWSTASHSTATE=1
fi

export PS1='\[\e[92m\]\u:\w\[\e[90m\]$(__git_ps1 " (%s)")\[\e[0m\]\$ '

## COLOR
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

## PYTHON
export PYTHONSTARTUP=~/.pythonrc

## BIND
stty werase undef
bind '"\C-w":unix-filename-rubout'

## TIPS
# find ./ -print0 | xargs -0 grep -dskip "production-bi"

