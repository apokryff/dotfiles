source ~/dotfiles/zsh/config/plugins.zsh
source ~/dotfiles/zsh/config/env.zsh
source ~/dotfiles/zsh/config/alias.zsh
source ~/dotfiles/zsh/config/functions.zsh


if [[ -f "$HOME/dotfiles/zsh/.env.zsh" ]]; then
  source "$HOME/dotfiles/zsh/.env.zsh"
else 
  local YELLOW='\033[1;33m'
  local RESET='\033[0m'
  echo -e "${YELLOW}Warning: .env.zsh file does not exist. You can create it by copying the example file:${RESET}"
  echo -e "${YELLOW}cp $HOME/dotfiles/zsh/example.env.zsh $HOME/dotfiles/zsh/.env.zsh${RESET}"
fi

