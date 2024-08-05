alias ll='ls -alt'

# obsidian directory, the environment variable is set in .bashrc
alias py=python3
alias gg=googler
alias cat=batcat
alias cd=z
# aliases for git
alias gitlg="git log --oneline --graph --abbrev-commit --decorate --date=relative --all"

alias config="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias configpush="config add -u && config commit -m save && config push github main"

# aliases for obsidian git
alias obs="git -C $OBSIDIAN_DIR"
alias obspush="obs add . && obs commit -m save && obs push github main"
alias obspull="obs pull"

alias obd="cd $OBSIDIAN_DIR"

# local aliases
alias gnn="cd $HOME/projects/gnn/"
