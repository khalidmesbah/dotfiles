#
# ~/.bash_profile
#

[[ -f ~/.zshrc ]] && source ~/.zshrc

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi