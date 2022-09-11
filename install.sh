#! /bin/sh
#======================================================================
#
# install.sh - 
#
# Created by wwq on 2022/09/11
# Last Modified: 2022/09/11 13:03:13
#
#======================================================================
sudo apt install nodejs npm
sudo npm install -g n
sudo n stable
sudo apt install global
sudo apt install ripgrep
sudo apt install g++ gcc cmake make
# 安装zsh
sudo apt install zsh

# 查看版本号，检测安装是否成功
zsh --version

# 设置默认shell
chsh -s $(which zsh)

# 注销帐号后执行，查看当前shell是否是zsh
echo $SHELL

#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
source .zshrc
sudo apt install bear
