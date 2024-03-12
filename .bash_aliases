# obsidian directory, the environment variable is set in .bashrc
alias py=python3
alias gg=googler

alias config= '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias obspush="git -C $OBSDIAN_DIR add . && git -C $OBSDIAN_DIR commit -m save && git -C $OBSDIAN_DIR push github main"
alias obspull="git -C $OBSDIAN_DIR pull github main"

alias obd cd $OBS_DIR
