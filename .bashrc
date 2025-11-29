export PS1="%B%~$ "

# Start tmux automatically
if command -v tmux &> /dev/null; then
    if [ -z "$TMUX" ]; then
        tmux attach || tmux new-session
    fi
fi
