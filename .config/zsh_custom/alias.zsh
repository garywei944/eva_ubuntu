# Shortcuts
alias c="clear"
alias fdh='fd -H'
alias fdhi='fd -HI'
alias rgh='rg --hidden'
alias rghi='rg --hidden --no-ignore'
alias s='neofetch'

# Commands
alias ak='sudo apt-key'

# Time
alias isodate='date +%F'
alias isotime='date +%Y-%m-%dT%H:%M:%S%z'
alias utctime='date -u +%FT%TZ'

# Browser-sync
alias bs='browser-sync'
alias bss='browser-sync start'
alias bsexpress='browser-sync start -p "localhost:5000" -f "public"'

# Cookiecutter
alias ckct='cookiecutter https://github.com/garywei944/cookiecutter-data-science.git'

# HDFView
alias hdfview='/opt/HDFView/3.1.1/hdfview.sh'

# PyCharm
function pcm() {
	pycharm $@ &> /dev/null & disown
}
alias pcmt='pycharm . &> /dev/null & disown'

# gitignore
alias gaignore='git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached'


alias reload='. ~/.zshrc'

# Servers
alias sachiel='ssh root@47.92.194.143'
alias shamshel='ssh ubuntu@3.83.202.176'

# Maybe
alias lg='lazygit'
alias ra='ranger'
alias sra='sudo -E ranger'
