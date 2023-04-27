#!/bin/bash
if [ `lsb_release -id | grep "Debian" | wc -l` -ne 0 ]; then
	#debian
	path=`curl -s https://api.github.com/repos/neovim/neovim/releases/latest | jq -r '.assets[] | select( .name | contains("linux64.deb")) | select( .name | contains("sha") | not) | .browser_download_url'`
	echo $path
	wget -O /tmp/neovim.deb $path
	sudo apt install /tmp/neovim.deb
else
	#debian以外
	sudo apt-get install software-properties-common
	sudo add-apt-repository -y ppa:neovim-ppa/stable
	sudo apt update
	sudo apt install -y neovim
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
sudo apt install ripgrep
