# 版本管理dotfiles
- 将本机所有的vim插件及配置文件统一进行管理，安装所有的文件在~/.vim下，每次修改只要同步既可
## 目录结构
```sh
~/.vim/
~/.vim/vimrc
~/.vim/.gitignore
~/.vimrc
~/.zshrc
...
```
- 其中~/.vimrc是~/.vim/vimrc的链接。创建方式如下：
```sh
ln -s ~/.vim/vimrc ~/.vimrc
```
## 使用github在github上创建一个仓，命名为dotfiles
```sh
cd ~/.vim
git init
git remote add origin https://github.com/wangwenqiangGitHub/dotfiles.git
git submodule add https://github.com/wangwenqiangGitHub/vim-init.git
git push
```
## 使用配置
- 安装:
```sh
git clone https://github.com/wangwenqiangGitHub/dotfiles.git ~/.vim
```
- link:
```sh
ln -s /.vim/vimrc ~/.vimrc
```
- 进入~/.vim目录取回submoduldes:
```sh
git submodule init
git submodule update
```
## 配置tmux
```sh
ln -s -f dotfiles/.tmux/.tmux.conf ~/.tmux.conf
cp dotfiles/.tmux/.tmux.conf.local .
#编辑vim .tmux.conf.local
set -g mouse on
set -g status-keys vi
set -g mode-keys vi
```
## 配置coc-nvim关于c++代码补全
```sh
cp coc-settings.json ~/.vim
sudo apt install ccls
#cpp项目中CMakeLists.txt添加命令生成compile_commands.json在build目录下
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
```
## 安装autojump
```sh
sudo apt install autojump
```
## 或者安装z.lua
```sh
#性能比 z.sh 快三倍，比 fasd / autojump 快十倍以上。
#https://github.com/skywind3000/z.lua
if [ -x $HOME/.config/zsh/z.lua/z.lua ]; then
    export _ZL_DATA=$HOME/.config/zsh/zluadata
    export _ZL_ADD_ONCE=1
    export _ZL_MATCH_MODE=1
    export _ZL_HYPHEN=1
    eval "$(lua $HOME/.config/zsh/z.lua/z.lua --init zsh)"
fi
```
## 安装zsh中的plug
```sh
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

```
- zsh中的主题安装
	- 安装Powerlevel9k
	```sh
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
	```
	- 设置 ~/.zshrc
	```sh
	ZSH_THEME="powerlevel9k/powerlevel9k"
	POWERLEVEL9K_MODE='nerdfont-complete'
	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable vcs vi_mode)
	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
	POWERLEVEL9K_PROMPT_ON_NEWLINE=true
	```
	- install PowerlineSymbols
	```sh
	wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
	wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
	mkdir -p  ~/.local/share/fonts/
	mkdir -p ~/.config/fontconfig/conf.d/
	mv PowerlineSymbols.otf ~/.local/share/fonts/
	fc-cache -vf ~/.local/share/fonts/
	mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
	```
	- 安装字体  
	[Meslo_LG_M_Regular_Nerd_Font_Complete_Mono](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/M/Regular/complete/Meslo%20LG%20M%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)字体  
	[DejaVuSansMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete.ttf)字体


## 安装neofetch
```sh
sudo apt install neofetch
```
## 搭建go开发环境
```sh
 sudo tar -C /usr/local -xvf go1.16.6.linux-amd64.tar.gz
 mkdir ~/go
```
## 安装linuxbrew
```sh
./install_Linuxbrew.sh
```
## Ultisnips
- 具体设置是在coc-settings中设置路径

## 安装cheat
```
https://github.com/cheat/cheat
#修改~/.config/cheat/conf.yml添加
  - name: cheat
    path: ~/dotfiles/cheat
    tags: [ personal ]
    readonly: false
```
# Manjaro

```
#设置国内镜像
sudo pacman-mirrors -i -c China
#更新系统
sudo pacman -Syyu
#安装i3
sudo pacman -S i3-gaps picom i3lock xss-lock polybar alacritty feh rofi
#需要注销重新选择i3重新启动

```
