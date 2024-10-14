CHEAT_DIR=~/dotfiles/zsh/plugins/cheat/

if [ ! -d "$CHEAT_DIR" ]; then
  echo "Installing cheat.sh..."
  mkdir -p "$CHEAT_DIR"
  curl https://cht.sh/:cht.sh > "$CHEAT_DIR/cht.sh"
  curl https://cheat.sh/:zsh > "$CHEAT_DIR/_cht"
  chmod +x "$CHEAT_DIR/cht.sh"
fi

function cht.sh() {
  local cht_script="$CHEAT_DIR/cht.sh"

  if [ ! -f "$cht_script" ]; then
    echo "Error: $cht_script not found!"
    return 1
  fi

  "$cht_script" "$@"
}

# Import Autocomplite
if [ -f "$CHEAT_DIR/_cht" ]; then

  _cht_completion() {
    source "$CHEAT_DIR/_cht"
  }

  compdef _cht_completion cht.sh
fi

