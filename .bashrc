export PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Colours and settings for command prompt
#
export PS1="\[\033[38;5;48m\]\u\[$(tput sgr0)\]\[\033[38;5;44m\]@\h\[$(tput sgr0)\]\[\033[38;5;33m\]:\W> \[$(tput sgr0)\]"

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
function check_vpn {
	pia="$(curl https://www.privateinternetaccess.com/ 2> /dev/null)"
	if [[ ${pia} = *"You are protected by PIA"* ]]; then
		printf "\033[1;32mPIA VPN is ON\n\033\e[0m"
	else
		printf "\033[1;31mPIA VPN is OFF\n\033\e[0m"
	fi
}
check_vpn

