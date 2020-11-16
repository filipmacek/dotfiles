# Vars
	HISTFILE=~/.zsh_history
	SAVEHIST=1000 
	EDITOR=vim
	ZSH=~/.zsh
	ZSH_CACHE_DIR=~/.zsh/cache
	export KUBECONFIG=~/.kube/configs/kubeconfig.yaml:~/.kube/config:~/.kube/configs/pi-cluster-config
	export hosts=~/Desktop/master-thesis/pi-cluster/hosts






	setopt inc_append_history # To save every command before it is executed 
	setopt share_history # setopt inc_append_history

	git config --global push.default current



# alias md-to-pdf="pandoc --variable urlcolor=cyan kubecluster.md --pdf-engine wkhtmltopdf -o"
# Load functions
source $HOME/dotfiles/zsh/functions.sh
source $HOME/dotfiles/zsh/prompt.sh


# Settings
	export VISUAL=vim


# Functional aliases
alias fpw="fzf --preview 'bat --style=numbers --color=always {} | head -500'"


source ~/dotfiles/zsh/plugins/fixls.zsh




fpath=(~/dotfiles/zsh/autocompletions $fpath)



#Functions
	# Loop a command and show the output in vim
	loop() {
		echo ":cq to quit\n" > /tmp/log/output 
		fc -ln -1 > /tmp/log/program
		while true; do
			cat /tmp/log/program >> /tmp/log/output ;
			$(cat /tmp/log/program) |& tee -a /tmp/log/output ;
			echo '\n' >> /tmp/log/output
			vim + /tmp/log/output || break;
			rm -rf /tmp/log/output
		done;
	}

# Custom cd
chpwd() ls

# For vim mappings: 
	stty -ixon


# Load functions
source ~/dotfiles/zsh/functions.sh


# Ohmyzsh plugins that I need
# Task warrior
# source ~/dotfiles/zsh/plugins/ohmyzsh/plugins/taskwarrior/taskwarrior.plugin.zsh

# # Time warrior
# source ~/dotfiles/zsh/plugins/timewarrior/timewarrior.plugin.zsh


# Aws
source ~/dotfiles/zsh/plugins/ohmyzsh/plugins/aws/aws.plugin.zsh

# Terraform
source ~/dotfiles/zsh/plugins/ohmyzsh/plugins/terraform/terraform.plugin.zsh


# Kubectl
source ~/dotfiles/zsh/plugins/ohmyzsh/plugins/kubectl/kubectl.plugin.zsh

# Minikube
source ~/dotfiles/zsh/plugins/ohmyzsh/plugins/minikube/minikube.plugin.zsh

# web-search
source ~/dotfiles/zsh/plugins/ohmyzsh/plugins/web-search/web-search.plugin.zsh

# zsh-z
source ~/dotfiles/zsh/plugins/zsh-z/zsh-z.plugin.zsh

source ~/dotfiles/zsh/plugins/ohmyzsh/lib/history.zsh
source ~/dotfiles/zsh/plugins/ohmyzsh/lib/key-bindings.zsh
source ~/dotfiles/zsh/plugins/ohmyzsh/lib/completion.zsh
source ~/dotfiles/zsh/plugins/vi-mode.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh/keybindings.sh

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi



# PATH
# GO bin files
export PATH=$PATH:/usr/local/go/bin

# kubectl krew plugin manager
export PATH=${PATH}:${HOME}/.krew/bin

# Utils
export PATH=$PATH:~/dotfiles/utils

# kotlin-native
export PATH=$PATH:/opt/kotlin-native-linux-1.3.72/bin

# Fzf
[ -f ~/dotfiles/zsh/.fzf.zsh ] && source ~/dotfiles/zsh/.fzf.zsh


# SOURCE THEME
# source ~/dotfiles/zsh/plugins/powerlevel9k/powerlevel9k.zsh-theme

autoload -U compinit && compinit


# Script for sourcing aliases in folders
for file in ~/dotfiles/*/aliases.sh; do
	source "$file"
done

# Script for sourcing utils in folders
for file in ~/dotfiles/*/utils.sh; do
	source "$file"
done
