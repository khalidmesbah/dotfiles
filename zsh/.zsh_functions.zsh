
# fabric
source  ~/.zsh_fabric_patterns_functions.zsh

# Copyt to all subdirectories

cpToAllSubDirs() {
    find -type d -not -path "." -exec cp $1 {} \;
}


# neo() {
#     local path="${1:-.}"  # Set the default value of $1 to '.'
#     neovide "$path" & disown
#     exit
# }

# up
up() {
    local COMMIT_MESSAGE="$*"
    echo ------------------------
    git status
    git add .
    echo ------------------------
    git status
    echo ------------------------
    git commit -m "$COMMIT_MESSAGE"
    echo ------------------------
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

function pkill() {
  ps aux | 
  fzf --height 40% \
      --layout=reverse \
      --header-lines=1 \
      --prompt="Select process to kill: " \
      --preview 'echo {}' \
      --preview-window up:3:hidden:wrap \
      --bind 'F2:toggle-preview' |
  awk '{print $2}' |
  xargs -r bash -c '
      if ! kill "$1" 2>/dev/null; then
          echo "Regular kill failed. Attempting with sudo..."
          sudo kill "$1" || echo "Failed to kill process $1" >&2
      fi
  ' --
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
# t() {
# 	trans en:en+ar "$*" | cat
# }
# ta() {
# 	trans :ar "$*" | cat
# }
# te() {
# 	trans en:en "$*" | cat
# }
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
yout() {
    yt-dlp -f 22 -P $2 $1
}
facd() {
    yt-dlp -P ~/videos/facebook/ $1
}
ydv() {
    yt-dlp -f 22 -P "~/videos/$2" $1
}
# download youtube playlists
ydp() {
    yt-dlp -f 22 -P "~/videos/$2" $1
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

vm() {
    cd $* && neovide . &; disown; exit;
}

# AI
ai() {
    aichat "$*"
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
            echo -e '#include <iostream>\n\nusing namespace std;\n\nint main() {\n  cout << "'$NAME'" << endl;\n  return 0;\n}' >>$FILE
            ;;
        py)
            echo -e 'print("$NAME")' >>$FILE
            ;;
        tsx)
            echo -e 'import React from "react";\n\nconst NAME = () => {\n  return (\n    <div>\n      <h1>NAME</h1>\n    </div>\n  );\n};\n\nexport default NAME;' >>$FILE
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
