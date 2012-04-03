# .bashrc
redhat-file="/etc/redhat-release"
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=~/bin/:~/.rvm/bin:~/bin:/var/lib/gems/1.8/bin/:/usr/local/gae/:/usr/local/sbin/:/usr/local/bin/:$PATH
export PATH
export EDITOR=vim
export WORDCHARS='?_-.[]~=&;!#$%^(){}<>'
alias ssh-agent-run='exec ssh-agent bash'
alias key-tluna='ssh-add /home/luna/.ssh/tluna_id_rsa'
alias key-github='ssh-add /home/luna/.ssh/git_id_rsa'

#refe ecu-jp to utf-8
function refe() {
  /usr/bin/refe $1 | iconv -f euc-jp -t utf-8 | cat
}

#各種ディストリとホストごとにあわせた環境パス設定
if [ -f redhat-file ]; then
  if [ $HOSTNAME -eq "centos.localdomain" ]; then
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
  PATH=~/bin/:~/.rvm/bin:~/bin:/var/lib/gems/1.8/bin/:/usr/local/gae/:/usr/local/sbin/:/usr/local/bin/:$PATH
else
fi
