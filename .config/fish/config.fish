if status is-interactive
    # Commands to run in interactive sessions can go here
end

# source all aliases for .bash_aliases
source $HOME/.bash_aliases

function fish_prompt
    # Virtual Environment
    if test -n "$VIRTUAL_ENV"
        set -l venv_name (basename "$VIRTUAL_ENV")
        echo -n -s (set_color green) "($venv_name) " (set_color normal)
    end

     # Git Branch
    if type -q git
        set -l git_branch (command git rev-parse --abbrev-ref HEAD 2>/dev/null)
        if test -n "$git_branch"
            echo -n -s (set_color magenta) "($git_branch) " (set_color normal)
        end
    end

    # Current Directory
    echo -n -s (set_color cyan) (prompt_pwd) (set_color normal) ' > '
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/utk/anaconda3/bin/conda
    eval /home/utk/anaconda3/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<
eval (direnv hook fish)
