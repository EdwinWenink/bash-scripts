#!/bin/bash
#From Alexander: https://github.com/alextes/dotfiles/blob/master/scripts/scripts/change-color-scheme

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
eval "$("$BASE16_SHELL/profile_helper.sh")"
BASE_16_SCHEME=$(cat ~/.config/base16-shell/my_colors.md | grep \* | cut -d' ' -f2 | sort --random-sort | head -n 1)
. ~/.config/base16-shell/scripts/${BASE_16_SCHEME}.sh
