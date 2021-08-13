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
## 安装zsh中的plug
```sh
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```
## 安装neofetch
```sh
sudo apt install neofetch
```
