# Setup fzf
#
#---------
if [[ ! "$PATH" == */home/filip/dotfiles/zsh/plugins/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/filip/dotfiles/zsh/plugins/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/filip/dotfiles/zsh/plugins/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/filip/dotfiles/zsh/plugins/fzf/shell/key-bindings.zsh"
