
# Директория для плагинов
PLUGINS_DIR=~/dotfiles/zsh/plugins
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Install oh-my-zsh
if [ ! -d "$PLUGINS_DIR/oh-my-zsh" ]; then
  echo "Installing oh-my-zsh..."
  git clone https://github.com/ohmyzsh/ohmyzsh.git $PLUGINS_DIR/oh-my-zsh
fi
export ZSH=$PLUGINS_DIR/oh-my-zsh

# Install powerlevel10k
if [ ! -d "$PLUGINS_DIR/powerlevel10k" ]; then
  echo "Installing powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $PLUGINS_DIR/powerlevel10k
fi

source $PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme

# Import oh-my-zsh
plugins=(git)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/config/.p10k.zsh ]] || source ~/dotfiles/zsh/config/.p10k.zsh
