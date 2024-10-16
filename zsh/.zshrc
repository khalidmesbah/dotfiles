# Configuration for Oh My Zsh
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%Y-%m-%d %T "
HYPHEN_INSENSITIVE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# plugins=(git zsh-autosuggestions zsh-completions fzf-tab)
plugins=(git zsh-autosuggestions zsh-completions fzf-tab vi-mode)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases.zsh
source ~/.zsh_functions.zsh
source ~/.secrets.sh
source <(fzf --zsh)

setopt NO_GLOB

eval "$(zoxide init zsh)"

# -- EXPORTS --

# PATH EXPORT
export PATH=$HOME/bin:/usr/local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PNPM_HOME="~/.local/share/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export FLYCTL_INSTALL="~/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

export SNAP="/var/lib/snapd/snap/bin"
export PATH=$SNAP:$PATH

# OTHER EXPORTS
export ZSH="$HOME/.oh-my-zsh"
export PGDATA='/var/lib/postgres/data'
export EDITOR='~/.config/nvim'
export SUDO_EDITOR='~/.config/nvim'
export TERMINAL='st-256color'
export BROWSER='chromium'
export FONT='FiraCode Nerd Font'
export FONT2='Caskaydia Cove Nerd Font'
export FONT3='JetBrainsMono Nerd Font'
export PS1="%F{green}%1~:%f"
