# Aliases
alias v="vim -p"
alias ll="ls -la"
alias r="ranger"
alias python=/usr/bin/python3
alias er="exec zsh"
alias op="xdg-open"
alias nm="nmap -sn 192.168.1.0/24"
alias psshall="pssh -i -h $hosts"
alias pscpall="pscp -h $hosts"
alias l="linode-cli"
alias clip="xsel --clipboard"
alias kd="kubectl describe"
alias kdel="kubectl delete"
alias dockerDelete="docker rmi $(docker images --filter "dangling=true" -q --no-trunc)"
alias dps="docker ps"
alias dlog="docker logs "
alias h="helm"
alias dcom="docker-compose"