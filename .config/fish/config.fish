if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /usr/share/autojump/autojump.fish
alias coppelia="conda activate mlops && ~/CoppeliaSim_4_6/coppeliaSim.sh"
alias py=python3
alias gg=googler
alias config="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
# project dir aliases

alias gnn="cd ~/projects/gnn"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/utk/anaconda3/bin/conda
    eval /home/utk/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<
