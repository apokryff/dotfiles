
source ${ZDOTDIR}/config/plugins.zsh
source ${ZDOTDIR}/config/environment.zsh
source ${ZDOTDIR}/config/alias.zsh
source ${ZDOTDIR}/config/functions.zsh


if [[ -f "$ZDOTDIR/.env.zsh" ]]; then
  source "$ZDOTDIR/.env.zsh"
else 
  cp $ZDOTDIR/example.env.zsh $ZDOTDIR/.env.zsh
fi

