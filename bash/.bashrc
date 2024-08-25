# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# --------------------
# aliases
# ==> by khalidmesbah
# --------------------

# ssh
alias mesbah='ssh mesbah@192.168.1.14'
alias kmsf='ssh mesbah@192.168.1.20'
alias startssh='sudo systemctl start sshd'
alias statusssh='sudo systemctl status sshd'
alias stopssh='sudo systemctl stop sshd'
# terminal
alias cat='bat'
# alias z='exec chromium fullscreen enable'
alias grep='grep --color=auto'
alias c='clear'
alias tree='exa --tree'
alias l='exa -aG --color=always --icons --group-directories-first'
alias ls='l'
alias ll='l -l'
alias ..='cd ..'
alias e='echo $1'
alias ee='echo -e $1'
alias q='exit'
alias cp='cp -r'
# alias tr='trash-restore'
alias rm='trash $1'
alias rmrf='rm -rf $1'
alias rmr='rm -r $1'
alias rmf='rm -f $1'
alias h='history'
alias ka='killall $1'
# useful directories
alias z='cd ~/repos/extension-zed'
alias zn='cd ~/repos/extension-zed && n'
alias sd='cd ~/repos/savvy && s'
alias san='cd ~/repos/savvy && n'
alias p='cd ~/repos/magic-lamp'
alias pn='cd ~/repos/magic-lamp && n'
alias pd='cd ~/repos/magic-lamp && d'
alias k='cd ~/repos/khalidMesbah-dream && vi'
alias alx='cd ~/repos/alx && n'
# alias do='cd ~/Downloads'
alias nile='cd ~/repos/nilezon'
alias sc='cd ~/scripts'
alias progs='cd ~/Programs'
alias pics='cd ~/Pictures'
alias audios='cd ~/Audios'
alias videos='cd ~/Videos'
alias r='cd ~/repos'
alias w='cd ~/repos/workflow'
alias epi='sv /etc/xdg/picom.conf'
alias ds='cd ~/repos/dsa && nvim .'
alias dsa='cd ~/repos/dsa'
alias vdsa='cd ~/Videos/cs/dsa'
alias a='cd ~/repos/blog-posts && vi'
alias aa='cd ~/repos/notes && vi'
alias pt='cd ~/repos/snippets'
alias tq='cd ~/repos/thought-quiver-cms'
alias tqc='cd ~/repos/thought-quiver-cms/client'
alias tqs='cd ~/repos/thought-quiver-cms/server'
# nvim config
alias nn='cd ~/.config/nvim && nvim .'
# i3 config
alias i='sv ~/.config/i3/config'
# tmux
# Mesbah Matrix
alias m='cd ~/repos/Mesbah-Matrix && nvim .'
alias ms='cd ~/repos/Mesbah-Matrix-Server && nvim .'
alias md='cd ~/repos/Mesbah-Matrix && d'
alias msd='cd ~/repos/Mesbah-Matrix-Server && d'
alias mr="md && msd"
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
alias std='cd ~/Programs/st-0.9'
alias dop='sudo pacman -Sc' # delete old packages
# yay
alias yi='yay -S $1'
alias ys='yay -Ss $1'
alias yr='yay -R $1'
alias yrs='yay -Rs $1'
alias yrns='yay -Rns $1'
# vim & neovim
alias vim='nvim'
alias n='nvim .'
alias sn='sudo nvim .'
alias v='nvim'
alias vi='nvim $(fzf)'
alias sv='sudo nvim'
# git & github
alias g='git'
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
alias ga='git add'
alias grh='git reset HEAD'
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
alias gcm='git checkout master'
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
alias gb='git branch'
alias gt="git tag"
# npm
alias npm="sudo pnpm"
alias npx="sudo pnpx"

alias ru="npm run $1"

alias ni="npm install"

alias na='npm add $1'
alias nag='npm add -g $1'
alias nad='npm add -D $1'

alias nu='npm update $1'
alias nug='npm update -g $1'

alias nr='npm remove $1'
alias nrg='npm remove -g $1'

alias nup="pnpm add -g pnpm"
# development
alias s='npm start'
alias d='npm dev'
alias b='npm build'
alias bs='npm build & s'
alias ns='npm $1'
# make a file executable
alias ux='sudo chmod u+x $1'
alias gx='sudo chmod g+x $1'
alias ox='sudo chmod o+x $1'
alias ax='sudo chmod a+x $1'
# package cache
alias pcs='du -sh /var/cache/pacman/pkg/'
# system
alias extract='tar -xzvf $1'
alias runc='gcc $1; ./a.out'
# misc
alias eb='nvim ~/.zshrc'
alias mp='makepkg -si'
alias str='rm -rf config.h && sudo make uninstall && sudo make clean install'
alias sti='patch -i $1'     # install a patch
alias stu='patch -R < "$*"' # uninstall a patch
alias rateMirrors='rate-mirrors --allow-root --protocol https arch | sudo tee /etc/pacman.d/mirrorlist'
# alias f='fuck'              # auto correct
alias f='fzf'
alias chrome='chromium'
alias gmail='neomutt'
# links
alias gh='chromium https://github.com/khalidmesbah?tab=repositories'
# archieve
alias untar='tar -zxvf $1'
alias open='xdg-open'
alias edge='microsoft-edge-stable'
# alias mp3='yt-dlp -f "ba" -x --audio-format mp3 "$1" -o "%(title)s.%(ext)s" -P "~/Audios/"'
#alias mp3='yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 "$1"'

# --------------------
# functions
# ==> by khalidmesbah
# --------------------

# Copyt to all subdirectories

cpToAllSubDirs() {
	find -type d -not -path "." -exec cp $1 {} \;
}

# up
up() {
	local COMMIT_MESSAGE="$*"
	e ------------------------
	git status
	git add .
	e ------------------------
	git status
	e ------------------------
	git commit -m "$COMMIT_MESSAGE"
	e ------------------------
	git push
}

# open dirs
od() {
	cd ~
	cd "$(find -type d -regextype sed -regex './[^.]*' -not -path './*node_modules*' -not -path '*try*' | sed 's/^..//g' | fzf)"
}
# | sed 's/^..//g'
# ^(\.\/[^.])
# open files
of() {
	xdg-open "$(find -type f | fzf)"
}
# lab
o() {
	mkdir -p ~/lab
	cd ~/lab
	NAME=$1
	EXTENSION=${NAME//[[:digit:]]/}
	NUMBER=${NAME//[!0-9]/}
	FILENAME=$NUMBER.$EXTENSION
	touch $FILENAME
	nvim $FILENAME
}

# install AUR packages with ease
iap() {
	local repoURL=$1
	local packageName=$(echo ${1::-4} | sed 's:.*/::')
	cd ~/Programs
	sudo rm -rf $packageName
	git clone $repoURL
	cd $packageName
	makepkg -si
	cd ~
}

# kill a server
kill() {
	sudo kill -9 $(sudo lsof -t -i:$1)
}

# check for errors
cherr() {
	sudo systemctl --failed
	echo -----
	sudo journalctl -p 3 -xb
}

# create a vite app
vite() {
	pnpm create vite $1
	cd $1
	pnpm install
	pnpm run dev
}

# night mode
nm() {
	local VALUE=$1
	echo $VALUE
	if ([ $VALUE = "g" ]); then
		redshift -P -O 1000
	elif ([ $VALUE = "l" ]); then
		redshift -P -O 5000
	else
		redshift -P -O 2500
	fi

}

# search google
# g() {
# 	chromium --user-data-dir=/home/khalidmesbah/.config/chromium/Default --class="search" --app="https://www.google.com/search?q=$*"
# }
# gs() {
# 	chromium --app="https://www.google.com/search?q=$*"
# }
# gi() {
# 	chromium --incognito "https://www.google.com/search?q=$*"
# }
# gn() {
# 	chromium --new-window "https://www.google.com/search?q=$*"
# }
# custom searches
mdn() {
	chromium --user-data-dir=/home/khalidmesbah/.config/chromium/Default --class="search" --app="https://developer.mozilla.org/en-US/search?q=$*"
}
# search youtube
y() {
	local query=""
	if [[ $* != "" ]]; then
		query="results?search_query=$*"
	fi
	chromium --app="https://www.youtube.com/$query"
}
yy() {
	chromium --app-id="agimnkijcaahngcdmfeangaknmldooml"
}
# translations, languages, and spell
t() {
	trans en:en+ar "$*" | cat
}
ta() {
	trans :ar "$*" | cat
}
te() {
	trans en:en "$*" | cat
}
# gt() {
# 	chromium --user-data-dir=/home/khalidmesbah/.config/chromium/Default --class="search" --app="https://translate.google.com/?sl=en&tl=ar&text=$*&op=translate"
# }
spell() {
	aspell -t -c "$1"
}
cspell() {
	echo "$*" | aspell --personal=personal-word-list.pws list
}
cfspell() {
	cat "$1" | aspell --personal=personal-word-list.pws list
}
# download youtube videos
yd() {
	yt-dlp -f $2 -P "~/Videos/$3" $1
}
# archive extraction
ex() {
	if [ -f "$1" ]; then
		case $1 in
		*.tar.bz2) tar xjf $1 ;;
		*.tar.gz) tar xzf $1 ;;
		*.bz2) bunzip2 $1 ;;
		*.rar) unrar x $1 ;;
		*.gz) gunzip $1 ;;
		*.tar) tar xf $1 ;;
		*.tbz2) tar xjf $1 ;;
		*.tgz) tar xzf $1 ;;
		*.zip) unzip $1 ;;
		*.Z) uncompress $1 ;;
		*.7z) 7z x $1 ;;
		*.deb) ar x $1 ;;
		*.tar.xz) tar xf $1 ;;
		*.tar.zst) unzstd $1 ;;
		*) echo "'$1' cannot be extracted via ex()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}
# leetcode solutions
# fetch templates based on the languages
# fetch the test cases
#

le() {
	local NAME=$1
	cd ~/repos/dsa/problem-solving/.leetcode
	echo
}

# open a snippet
pit() {
	local FILE=$1
	local EXTENSION="${FILE##*.}"
	local NAME="${FILE%.*}"
	local DIR=~/repos/snippets/$EXTENSION
	mkdir -p $DIR
	cd $DIR
	if [ ! -f "$FILE" ]; then
		touch $FILE
		template $FILE $DIR
		echo "$FILE file is created at $DIR directory"
	else
		echo "$FILE exists!"
	fi
	nvim $FILE
}

# template
template() {
	local FILE=$1
	local EXTENSION="${FILE##*.}"
	local NAME="${FILE%.*}"
	local DIR=$2
	local FULLPATH=$DIR/$FILE

	case "$EXTENSION" in
	c)
		echo -e '#include <stdio.h>\n#define p printf\n\nint main() {\n  printf("'$NAME'\\n");\n  return 0;\n}' >>$FILE
		;;
	cpp)
		echo -e '#include <iostream>\n\nint main() {\n  std::cout << "'$NAME'" << std::endl;\n  return 0;\n}' >>$FILE
		;;
	py)
		echo -e 'print("$NAME")' >>$FILE
		;;
	*)
		echo "No template available for the extension '$EXTENSION'."
		;;
	esac
}

deleteSwapFiles() {
	rmrf ~/.local/state/nvim/swap/*
}

opdf() {
	(edge $1 &) && exit
}

mp3() {
	yt-dlp -f 'ba' -x --audio-format mp3 "$1" -o '%(title)s.%(ext)s' -P "~/Audios/"
}

# --------------------
# variables
# ==> by khalidmesbah
# --------------------

export PGDATA=/var/lib/postgres/data
export EDITOR='nvim'
export TERMINAL='st-256color'
export BROWSER='Chromium'
export FONT='Caskaydia Cove Nerd Font'
export FONT2='FiraCode Nerd Font'
export FONT3='JetBrainsMono Nerd Font'
export BASH_ENV='~/scripts/bashrc.sh'
export PS1="\[\e[30;47m\]\W\[\e[m\]\[\e[30;47m\]:\[\e[m\] "
# don't put dublicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%Y-%m-%d %T "

# --------------------

#eval "$(thefuck --alias)"

PATH=~/.console-ninja/.bin:$PATH

# pnpm
export PNPM_HOME="/home/khalidmesbah/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
