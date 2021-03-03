# Some aliases associated with projects

alias pls='cat ~/.config/zsh/projects.zsh'
alias epls='$EDITOR ~/.config/zsh/projects.zsh'

__open_project() {
	if [[ ! "$2" ]]; then
		cd "$1"
	else
		eval "${@:2}" "$1"
	fi
}

alias peu='export GIT_DIR=~/.eva.git GIT_WORK_TREE=~ && cd ~'
alias peva='__open_project ~/.eva'
alias pe='__open_project ~/.spacemacs.d'
alias pst='__open_project ~/.config/sublime-text-3/Packages'
