#! /bin/sh
#======================================================================
#
# install_Linuxbrew.sh - 
#
# Created by wwq on 2021/08/17
# Last Modified: 2021/08/17 09:12:19
# https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/
#======================================================================


#======================================================================
# 设置环境变量
#======================================================================

if [[ "$(uname -s)" == "Linux" ]]; then BREW_TYPE="linuxbrew"; else BREW_TYPE="homebrew"; fi
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/${BREW_TYPE}-core.git"

# $?这里表示上一次运行的结果

#这里不能写成if [$? != 0]或者if [$? != 0 ]或者if[ $? != 0]; shell语法：[后要跟空格 ]前要跟空格

if [ $? != 0 ]; then
    echo "fail"
	exit 1
fi

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
test -r ~/.profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile
test -r ~/.zprofile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zprofile

#======================================================================
# 替换现有仓库上游 
#======================================================================

git -C "$(brew --repo)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/linuxbrew-core.git
brew update-reset
