#=======================================================
# SET TMUX
#=======================================================
alias tn='tmux new -s'
alias tks='tmux kill-server'
alias ta='tmux attach -t'
alias tkw='tmux kill-window -t'

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
alias gc='git config credential.helper store'
alias gs='git config credential.helper store'
alias gg='git clone'

#=======================================================
# SET 服务器连接
#=======================================================
alias s137='ssh root@192.216.20.137'
alias s136='ssh root@192.216.20.136'
alias s135='ssh root@192.216.20.135'
alias s134='ssh root@192.216.20.134'

alias s153='ssh root@192.216.20.153'

alias s143='ssh root@192.216.20.143'
alias s144='ssh root@192.216.20.144'
alias s145='ssh root@192.216.20.145'
alias s120='ssh root@192.216.20.120'
alias s146='ssh root@192.216.20.146'
alias s186='ssh root@192.216.20.186'
alias s187='ssh root@192.216.20.187'

alias srsu='ssh root@172.17.10.2'
alias s1127='ssh root@10.255.11.27'

#=======================================================
# 设置函数
#=======================================================
function cpNcs(){
	scp "$1" root@192.216.20."$2":/system/bin
}
function do-scp(){
	scp "$1" root@192.216.20."$2":"$3"
}
function cpLib(){
	scp "$1" root@192.216.20."$2":/system/lib
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
#alias s='neofetch'
#alias g='onefetch'
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
