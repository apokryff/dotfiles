

update_zsh() {
  source ~/.zshrc
}

clear_docker() {
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
  docker rmi $(docker images -q)
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
