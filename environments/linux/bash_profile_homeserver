# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


# User specific environment and startup programs
export WORDCHARS='?_-.[]~=&;!#$%^(){}<>'

#refe ecu-jp to utf-8
function refe() {
  /usr/bin/refe $1 | iconv -f euc-jp -t utf-8 | cat
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
