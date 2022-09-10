## japanese font

sudo apt -y install language-pack-ja-base language-pack-ja
wget https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00401.zip 

ipa_dir=~/.local/share/fonts/cica
if [ ! -d $ipa_dir ]; then
    mkdir -p $ipa_dir
fi
find . -type f -name 'IPAexfont*zip' -exec unzip {} -d $ipa_dir \;
find . -type f -name 'IPAexfont*zip' -exec rm {} \;

curl https://api.github.com/repos/miiton/Cica/releases/latest           | jq '. | .assets[] | select(.name | contains("with_emoji")) | .browser_download_url' | xargs -I {} wget {}
cica_dir=~/.local/share/fonts/cica
if [ ! -d $cica_dir ]; then
    mkdir -p $cica_dir
fi
find . -type f -name 'Cica*zip' -exec unzip {} -d $cica_dir \;
find . -type f -name 'Cica*zip' -exec rm {} \;

fc-cache -fv

## japanese ime
sudo apt-get -y install fcitx5-mozc fonts-noto-cjk dbus-x11
