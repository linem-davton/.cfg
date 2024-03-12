if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /usr/share/autojump/autojump.fish

# source all aliases for .bash_aliases
source $HOME/.bash_aliases


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/utk/anaconda3/bin/conda
    eval /home/utk/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<
