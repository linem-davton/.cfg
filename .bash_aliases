# obsidian directory, the environment variable is set in .bashrc
alias py=python3
alias gg=googler

alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# aliases for obsidian git
alias obs="git -C $OBSIDIAN_DIR"
alias obspush="obs add . && obs commit -m save && obs push github main"
alias obspull="obs pull"

alias obd="cd $OBSIDIAN_DIR"
