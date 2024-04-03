#! /bin/sh
#======================================================================
#
# install.sh - 
#
# Created by wwq on 2022/09/11
# Last Modified: 2022/09/11 13:03:13
#
#======================================================================
install_ccls_from_source() {
	if which ccls 2> /dev/null && ccls --version; then
		echo '-- ccls already installed, skipping...'
	else
		if ! [ -d .vim/ccls ]; then
			echo '-- Cloning ccls source code from GitHub (please wait)...'
			mkdir -p /tmp/ccls-work.$$
			pushd /tmp/ccls-work.$$
			git clone https://github.com/MaskRay/ccls.git --depth=1 --recursive
			popd
			mv /tmp/ccls-work.$$/ccls .vim/
		fi
		cd .vim/ccls
		rm -rf /tmp/ccls-build.$$
		echo '-- Building ccls from source...'
		cmake -B /tmp/ccls-build.$$ -DCMAKE_BUILD_TYPE=Release
		cmake --build /tmp/ccls-build.$$ --config Release --parallel `grep -c ^processor /proc/cpuinfo || echo 1`
		sudo cmake --build /tmp/ccls-build.$$ --config Release --target install
		echo '-- Installed ccls successfully'
		rm -rf /tmp/ccls-build.$$
		cd ../..
	fi
}

sudo apt update
sudo apt install net-tools
# 从官网https://nodejs.org/en/download/下载bin文件
#sudo apt install nodejs npm curl
# sudo npm install -g n
# sudo n stable
sudo apt install global
sudo apt install ripgrep
sudo apt install g++ gcc cmake make #clangd
# gcc build flash -m32
sudo apt-get install gcc-multilib g++-multilib
# clangd手动安装地址
#https://github.com/clangd/clangd/releases/tag/17.0.3

# 安装vim
sudo apt install vim
#vim更新到最新版本
sudo add-apt-repository ppa:jonathonf/vim-daily
sudo apt update
sudo apt install vim

sudo apt install zsh
sudo apt install openssh-server
sudo apt install bear
sudo apt install libbz2-dev p7zip-full rar
sudo apt install universal-ctags
sudo apt install lua5.4
sudo apt install sshpass

ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.vimrc
source ~/.zshrc
sudo apt install bear
mkdir -p ~/.config/coc/extensions/node_modules/coc-ccls
ln -sf node_modules/ws/lib ~/.config/coc/extensions/node_modules/coc-ccls/lib
install_ccls_from_source

# coc
cp ~/dotfiles/coc-settings.json ~/.vim
cp ~/dotfiles/task_template.ini ~/.vim
npm i -g bash-language-server
# dprint工具
curl -fsSL https://dprint.dev/install.sh | sh
# 查看版本号，检测安装是否成功
zsh --version

# 设置默认shell
chsh -s $(which zsh)

# 注销帐号后执行，查看当前shell是否是zsh
echo $SHELL

#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 手动下载
sh -c "$(curl -fsSL https://gitee.com/shmhlsy/oh-my-zsh-install.sh/raw/master/install.sh)"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/skywind3000/z.lua.git ~/.config/zsh/z.lua
# sed -i '/^plugins=(/cplugins=(git history history-substring-search node npm wd web-search last-working-dir zsh-autosuggestions vi-mode)' .zshrc
# echo "plugins=(git history history-substring-search node npm wd web-search last-working-dir zsh-autosuggestions vi-mode)" >> .zshrc
