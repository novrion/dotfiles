export PS1="%B%~$ "
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# TrackTUI auto run
cd $HOME/git/tracktui/
bash scripts/startup.sh
cd $HOME


# Start tmux automatically
if command -v tmux &> /dev/null; then
    # Check if already inside a tmux session
    if [ -z "$TMUX" ]; then
        # Start a new session or attach to an existing one
        tmux attach || tmux new-session
    fi
fi

. "$HOME/.local/bin/env"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
