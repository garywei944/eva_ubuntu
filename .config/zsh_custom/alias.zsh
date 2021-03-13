# Shortcuts
alias c="clear"
alias fdh='fd -H'
alias fdhi='fd -HI'
alias rgh='rg --hidden'
alias rghi='rg --hidden --no-ignore'
alias s='neofetch'

# Commands
alias bsst='browser-sync start --server --files "", \!.git'
alias bsdy='browser-sync start --proxy "" --files "", \!.git'
alias gaignore='git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached'
alias reload='. ~/.zshrc'
alias xaw='Xephyr -br -ac -noreset -screen 1920x1080 :1 & sleep 2 ; DISPLAY=:1 awesome'
alias xqt='Xephyr -br -ac -noreset -screen 1920x1080 :1 & sleep 2 ; DISPLAY=:1 qtile start'

# Servers
alias sachiel='ssh root@47.92.194.143'
alias shamshiel='ssh ubuntu@3.83.202.176'

# Maybe
alias lg='lazygit'
alias ra='ranger'
alias sra='sudo -E ranger'
