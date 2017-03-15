#!/data/data/com.termux/files/usr/bin/bash

echo "deb [arch=all,aarch64] http://mirrors.tuna.tsinghua.edu.cn/termux stable main" > $HOME/../usr/etc/apt/sources.list
apt update
apt install -y git zsh
clear

if [ -d "$HOME/.termux" ]; then
 mv $HOME/.termux $HOME/.termux.bak
fi

curl -fsLo $HOME/.termux/colors.properties --create-dirs https://cdn.rawgit.com/4679/oh-my-termux/master/.termux/colors.properties
curl -fsLo $HOME/.termux/font.ttf --create-dirs https://cdn.rawgit.com/4679/oh-my-termux/master/.termux/font.ttf

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh --depth 1
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
echo '\n#alias for cnpm\nalias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"' >> ~/.zshrc && source ~/.zshrc

chsh -s zsh

termux-setup-storage

echo Done!

exit
