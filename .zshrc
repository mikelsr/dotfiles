# Path to your oh-my-zsh installation.
export ZSH=/home/mikel/.oh-my-zsh

## Oh-my-zsh settings
ZSH_THEME="classyTouch"
CASE_SENSITIVE="true"
UPDATE_ZSH_DAYS=14
plugins=(
	git
	zsh-syntax-highlighting
)
. $ZSH/oh-my-zsh.sh


## Custom settings

# Enable extended globbing
setopt extended_glob

# Functions
. $HOME/.functions
# Aliases
. $HOME/.aliases
# Profile
. $HOME/.profile


# thefuck
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

# tilix fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi

setsid wal -i /home/mikel/.wallpaper -q

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux
fi
