# zsh
alias zc="nvim ~/.zshrc"
alias za="nvim ~/.zsh_aliases.zsh"
alias zf="nvim ~/.zsh_functions.zsh"
alias zr='source ~/.zshrc'
alias ohmyzsh="mate ~/.oh-my-zsh"

# dotfiles
alias .f='cd ~/dotfiles/'

# terminal
# alias cd='z'
alias cat='bat'
alias top='bpytop'
alias sec='v ~/.secrets.sh'

# test
alias db='db-migrate'
alias dbd='db-migrate down -v'
alias dbu='db-migrate up -v'

# Book
alias book='cd ~/repos/mesbah-code && nvim main.tex'

# Sys
alias sd='shutdown now'
alias re='reboot'

# clipboard
alias copy='xsel --input --clipboard'
alias paste='xsel --output --clipboard'

# ssh
alias mesbah='ssh mesbah@192.168.1.14'
alias kmsf='ssh kmsf@192.168.1.20'
alias startssh='sudo systemctl start sshd'
alias statusssh='sudo systemctl status sshd'
alias stopssh='sudo systemctl stop sshd'
# alias z='exec chromium fullscreen enable'
alias grep='grep --color=auto'
alias c='clear'

alias l='eza -aG --color=always --icons --group-directories-first'
alias l.='eza -al --color=always --group-directories-first ../' # ls on the PARENT directory
alias l..='eza -al --color=always --group-directories-first ../../' # ls on directory 2 levels up
alias l...='eza -al --color=always --group-directories-first ../../../' # ls on directory 3 levels up
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias ll='l -l'
alias ls='l'
alias tree='eza --tree'
alias ..='cd ..'
alias e='echo $1'
alias ee='echo -e $1'
alias q='exit'
alias cp='cp -r'
alias mkd="mkdir -pv"
# alias tr='trash-restore'
alias rm='trash $1'
alias rmrf='rm -rf $1'
alias srmrf='sudo rm -rf $1'
alias rmr='rm -r $1'
alias rmf='rm -f $1'
alias h='history'
alias ka='killall $1'
alias fn='killall node'

# useful directories
alias ez='cd ~/repos/extension-zed'
alias ezn='cd ~/repos/extension-zed && n'
alias p='cd ~/repos/magic-lamp'
alias pn='cd ~/repos/magic-lamp && n'
alias pd='cd ~/repos/magic-lamp && d'
alias alx='cd ~/repos/alx && n'
alias dos='cd ~/downloads'
alias nile='cd ~/repos/nilezon'
alias sc='cd ~/repos/workflow/scripts'
alias progs='cd ~/programs'
alias pics='cd ~/pictures'
alias audios='cd ~/audios'
alias videos='cd ~/videos'
alias r='cd ~/repos'
alias w='cd ~/repos/workflow'
alias epi='sv /etc/xdg/picom.conf'
alias ds='cd ~/repos/ps && nv .'
alias dsa='cd ~/repos/ps'
alias vdsa='cd ~/videos/cs/dsa'
alias ma='cd ~/repos/mastering-4-critical-skills-using-cpp-17 && nvim .'
alias a='cd ~/repos/blog-posts && neovide . &;'
alias aa='cd ~/repos/second-brain/ && neovide . &; disown; exit;'
alias pt='cd ~/repos/snippets'
alias sa='cd ~/repos/savvy'
alias sac='cd ~/repos/savvy/client'
alias sas='cd ~/repos/savvy/server'
#
# nvim config
alias nn='cd ~/.config/nvim && nvim .'

# i3 config
alias i='sv ~/.config/i3/config'

# tmux
alias t='tmux'

# suckless
alias cst='cd ~/bin/st/st-patched'
alias rst='rmrf ~/bin/st/st-patched/* && cp ~/bin/st/st-original/* ~/bin/st/st-patched'
alias str='rm -rf config.h && sudo make uninstall && sudo make clean install' # restart st
alias sti='patch -p1 < $1'     # install a patch
alias stu='patch -R < "$*"' # uninstall a patch

# Mesbah Matrix
alias m='cd ~/repos/mesbah-matrix'
alias mm='m && n'
alias md='m && d'

# Quizzy
alias qm='cd ~/repos/quizzy && n'
alias qd='cd ~/repos/quizzy && d'

# pacman
alias pi='sudo pacman -S $1'
alias psearch='sudo pacman -Ss $1'
alias pr='sudo pacman -R $1'
alias prs='sudo pacman -Rs $1'
alias prns='sudo pacman -Rns $1'
alias pu='sudo pacman -Syu'
alias pl='sudo pacman -Qe'
alias pw='sudo pacman -Qi $1'        # info about a package
alias cleanup='prns $(pacman -Qtdq)' # remove orphaned packages
alias dop='sudo pacman -Sc' # delete old packages

# yay
alias yi='yay -S $1'
alias ys='yay -Ss $1'
alias yr='yay -R $1'
alias yrs='yay -Rs $1'
alias yrns='yay -Rns $1'
alias yq='yay -Q'
# vim & neovim & neovide
alias vim='nvim'
alias n='nvim .'
alias sn='sudo nvim .'
alias v='nvim'
alias vi='nvim $(f)'
alias sv='sudo nvim'
alias g='googler'

# git & github
alias gm="git merge"
alias gmv='git mv'
alias grm='git rm'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias glg='git log'
alias glo='git log --oneline'
alias gls='git log --stat'
alias glos='git log --oneline --stat'
alias gc='git clone'
alias grh='git reset HEAD'
alias grd='git reset --hard origin/main'
alias gap='git add -p'
alias ga='git add -A'
alias glum='git pull upstream master'
alias gpr='git pull --rebase'
alias gppd='git pull && git push origin develop'
alias gppm='git pull && git push origin master'
alias gfrb='git fetch && git rebase'
alias gp='git push'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gcm='git checkout main'
alias gsl="git shortlog -sn"
alias gwc="git whatchanged"
alias gnew="git log HEAD@{1}..HEAD@{0}"
alias gcaa="git commit -a --amend -C HEAD"
alias gstd="git stash drop"
alias gnew="git log HEAD@{1}..HEAD@{0}"
alias gcaa="git commit -a --amend -C HEAD"
alias gstd="git stash drop"
alias gpm='git push origin master'
alias gpd='git push origin development'
alias gr='git remote'
alias gra='git remote add'
alias gd='git diff'
alias gb='git branch -v'
alias gt="git tag"
alias gg='git log --oneline --decorate --graph --all'

# npm
alias npm="sudo pnpm"
alias npx="sudo pnpx"
alias ru="sudo pnpm run $1"
alias ni="sudo pnpm install"
alias na='sudo pnpm add $1'
alias nag='sudo pnpm add -g $1'
alias nad='sudo pnpm add -D $1'
alias nu='sudo pnpm update $1'
alias nug='sudo pnpm update -g $1'
alias nr='sudo pnpm remove $1'
alias nrg='sudo pnpm remove -g $1'
alias nup="pnpm add -g pnpm"

# development
alias s='npm start'
alias d='npm dev'
alias nt='npm run test'
alias b='npm build'
alias bs='b && s'
alias ns='npm $1'

# make a file executable
alias ux='sudo chmod u+x $1'
alias gx='sudo chmod g+x $1'
alias ox='sudo chmod o+x $1'
alias ax='sudo chmod a+x $1'
alias chownp='sudo chown -R kmsf $1'

# package cache
alias pcs='du -sh /var/cache/pacman/pkg/'

# system
alias extract='tar -xzvf $1'
alias runc='gcc $1; ./a.out'
alias SS="sudo systemctl"

# misc
alias nv='neovide ${1:-.} & disown; exit'
alias mp='makepkg -si'
alias rateMirrors='rate-mirrors --allow-root --protocol https arch | sudo tee /etc/pacman.d/mirrorlist'
alias ui='sudo pnpm dlx shadcn-ui@latest add'
# alias f='fuck'              # auto correct
alias f='fzf --preview="bat --color=always {}"'
alias chrome='chromium'
alias gmail='neomutt'

# links
alias github='chromium https://github.com/khalidmesbah?tab=repositories'

# archieve
alias untar='tar -zxvf $1'
alias open='xdg-open'
alias edge='microsoft-edge-stable'
# alias mp3='yt-dlp -f "ba" -x --audio-format mp3 "$1" -o "%(title)s.%(ext)s" -P "~/Audios/"'
#alias mp3='yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 "$1"'

# ALX
alias calx='python ~/scripts/calx.py'
#
# Misc
alias bg='feh --bg-fill --randomize ~/pictures/wallpapers'

# Fun
alias say= '~/repos/workflow/scripts/say.sh'
alias fsay='~/repos/workflow/scripts/fsay.sh'

# CMake, make, CPP compilation stuff
alias mk='cmake -B build && make -C build && ./build/a.out'

# AI commit2
alias aic="aicommit2"
