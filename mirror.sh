#!/data/data/com.termux/files/usr/bin/bash

echo "deb [arch=all,aarch64] http://mirrors.tuna.tsinghua.edu.cn/termux stable main" > $HOME/../usr/etc/apt/sources.list
apt update

echo Done!

exit
