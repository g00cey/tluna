# .bashrc
redhatfile="/etc/redhat-release"
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=~/bin/:/sbin/:~/.rvm/bin:~/bin:/var/lib/gems/1.8/bin/:/usr/local/gae/:/usr/local/sbin/:/usr/local/bin/:$PATH
export PATH
export LANG=ja_JP.UTF-8
export EDITOR=vim
export TERM=xterm-256color
alias ssh-agent-run='exec ssh-agent bash'
alias key-tluna='ssh-add /home/luna/.ssh/tluna_id_rsa'
alias key-github='ssh-add /home/luna/.ssh/git_id_rsa'


#refe ecu-jp to utf-8
function refe() {
  /usr/bin/refe $1 | iconv -f euc-jp -t utf-8 | cat
}

#各種ディストリとホストごとにあわせた環境パス設定
if [ -f $redhatfile ]; then
  if [ $HOSTNAME == "centos.localdomain" ]; then
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
    PATH=~/bin/:~/.rvm/bin:~/bin:/var/lib/gems/1.8/bin/:/usr/local/gae/:/usr/local/sbin/:/usr/local/bin/:$PATH
  fi
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
alias sudo="sudo env PATH=$PATH"
