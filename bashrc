# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions


agent="$HOME/tmp/ssh-agent-$USER"
if [ -S "$SSH_AUTH_SOCK" ]; then
	case $SSH_AUTH_SOCK in
	/tmp/*/agent.[0-9]*)
		ln -snf "$SSH_AUTH_SOCK" $agent && export SSH_AUTH_SOCK=$agent
	esac
elif [ -S $agent ]; then
	export SSH_AUTH_SOCK=$agent
else
	echo "no ssh-agent"
fi

## ubuntu version path
PATH=~/.rvm/bin:~/bin:/var/lib/gems/1.8/bin/:/usr/local/gae/:/usr/local/sbin/:/usr/local/bin/:$PATH
export PATH
export EDITOR=vim
export WORDCHARS='?_-.[]~=&;!#$%^(){}<>'
alias ssh-agent-run='exec ssh-agent bash'
alias key-tluna='ssh-add /home/luna/.ssh/tluna_id_rsa'
alias key-github='ssh-add /home/luna/.ssh/git_id_rsa'
alias ctags='ctags -f tags -R ./'

#refe ecu-jp to utf-8
function refe() {
  /usr/bin/refe $1 | iconv -f euc-jp -t utf-8 | cat
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

