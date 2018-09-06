export PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Colours and settings for command prompt
#
export PS1="\[\033[38;5;48m\]\u\[$(tput sgr0)\]\[\033[38;5;44m\]@\h\[$(tput sgr0)\]\[\033[38;5;33m\]> \[$(tput sgr0)\]"

# Aliases
#
alias ll='ls -lahG'
alias home='cd ~'
alias h='history'

# redefine some commands to make them
# safer to use (i.e. not destructive)
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'

# Customize some bash history options
#
export HISTTIMEFORMAT='%b %d %I:%M %p '
export HISTCONTROL=ignoreboth		# could also be: ignoredups:ignorespace
