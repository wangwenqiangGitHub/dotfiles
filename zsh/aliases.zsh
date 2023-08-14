#=======================================================
# SET TMUX
#=======================================================
alias tn='tmux new -s'
alias tks='tmux kill-server'
alias ta='tmux attach -t'
#tmux默认会同步会话到所有窗口，并使用尺寸最小窗口的尺寸，这会造成大窗口有小点。
#使用以下方式来解决:tmux at -d #简写为 tmux a -d
alias td='tmux at -d'
alias tkw='tmux kill-window -t'
alias tu="tmux source ~/.tmux.conf.local"

#=======================================================
# SET shell
#=======================================================
#alias av='source venv/bin/activate'
alias c='clear'
#alias cdiff='colordiff'
#alias cs='calcurse'
#alias dv='deactivate'
alias l='ls -la'
alias lg='lazygit'
alias ra='ranger'
alias sra='sudo -E ranger'

#=======================================================
# SET git
#=======================================================
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gS='git config credential.helper store'
alias gg='git clone'
alias gp='git push origin master'
alias git_ignore_file='git update-index --assume-unchanged'
alias git_cancel_all="git ls-files -v | grep '^h\ ' | awk '{print \$2}' | xargs git update-index --no-assume-unchanged"
alias git_ls_ignore_file="git ls-files -v | grep '^h\ '| awk '{print \$2}'"
alias vpn_clash='export http_proxy=http://0.0.0.0:7890 && export https_proxy=http://0.0.0.0:7890'
alias unvpn='unset http_proxy && unset https_proxy'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gb="git branch"
alias gn='git commit --amend --no-edit'
alias gpm='git push origin main'
alias ge='git commit --allow-empty-message --allow-empty -m ""'
alias gla='gl --author wangwenqiang'
alias glf='gl --follow -p'
# alias ga="git add -A"
# 与go命令冲突
# alias go="git checkout"
alias gP='git pull'
alias gg='git config --local user.name wangwenqiangGitHub  && git config --local user.email 1103169969@qq.com'
alias gh='git config --add oh-my-zsh.hide-dirty 1'
# alias gp="git push;git push github"
# git archive --format zip --output xxx.zip master
#=======================================================
# SET 服务器连接
#=======================================================

alias s105='ssh root@192.216.223.105'
alias s107='ssh root@192.216.223.107'

alias srsu='ssh root@172.17.10.2'
alias s1127='ssh root@10.255.11.27'
alias wwq='ssh wwq@49.233.53.119'
#=======================================================
# 设置函数
#=======================================================
function cpNcs(){
	scp "$1" root@192.216.223."$2":/system/bin
}
function do-scp(){
	scp "$1" root@192.216.223."$2":"$3"
}
function cpLib(){
	scp "$1" root@192.216.223."$2":/system/lib
}
function try_until_success(){
	local i = 1
	while true
	do
		echo "Try $i at $(data)."
		$* && break
		((i+1))
		echo
	done
}
fweather()
{
	curl -H "Accept-Language: zh" "http://wttr.in/${1-beijing}?m&${2-3}"
}
#alias ipy='ipython'
#alias ms='mailsync'
#alias mt='neomutt'
#alias r='echo $RANGER_LEVEL'
#alias pu='python3 -m pudb'
# ra() {
#if [ -z "$RANGER_LEVEL" ]
#then
#ranger
#else
#exit
#fi
#}

#======================================================================
# 小工具
#======================================================================
alias s='neofetch'
alias g='onefetch'
#alias sudo='sudo -E'
#alias vim='nvim'
#alias bat='sudo tlp bat'
#alias ac='sudo tlp ac'
#alias gy='git-yolo'
#alias nb='newsboat -r'
#alias nt="sh -c 'cd $(pwd); st' > /dev/null 2>&1 &"
#alias ta='tmux a'
#alias t='tmux'
#alias lo='lsof -p $(fps) +w'

# vmware
alias vm='sudo mkdir /mnt/hgfs/D && sudo vmhgfs-fuse -o allow_other .host:/D /mnt/hgfs/D'
#======================================================================
# 工作
#======================================================================
function tarapp(){
	tar zcvf $1.tar.gz --exclude=$1/CMakeLists.txt --exclude=$1/Debug --exclude=$1/.settings --exclude=$1/.cproject --exclude=$1/.project --exclude=$1/local.Mk $1
}

function cheatsheets(){
	cd ~/awesome-cheatsheets && grep -r "$1" .
}

alias grep_from_file='grep -r "list" . --include=CMakeLists.txt'

function gro() {
    local git_root
    git_root=$(git rev-parse --show-toplevel 2>/dev/null)
    if [[ $? -eq 0 && -d $git_root ]]; then
        cd "$git_root"
    else
        echo "Not in a git repository or could not find the git root."
    fi
}

function subuntu137(){
	smbclient //192.168.208.136/ubuntu -U kingwq%1 -c "${1} ${2} ${2}"
}
