

update_zsh() {
  source ~/.zshrc
}

clear_docker() {
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
  docker rmi $(docker images -q)
}
