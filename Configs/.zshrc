# ███████╗███████╗██╗  ██╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
# ╚══███╔╝██╔════╝██║  ██║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
#   ███╔╝ ███████╗███████║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
#  ███╔╝  ╚════██║██╔══██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
# ███████╗███████║██║  ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
# ╚══════╝╚══════╝╚═╝  ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝
#                                     -By: GrainedLotus515
# If not running interactively, don't do anything
[[ $- != *i* ]] && return



# ██╗   ██╗ █████╗ ██████╗ ██╗ █████╗ ██████╗ ██╗     ███████╗███████╗
# ██║   ██║██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝
# ██║   ██║███████║██████╔╝██║███████║██████╔╝██║     █████╗  ███████╗
# ╚██╗ ██╔╝██╔══██║██╔══██╗██║██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║
#  ╚████╔╝ ██║  ██║██║  ██║██║██║  ██║██████╔╝███████╗███████╗███████║
#   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝
export VISUAL="${EDITOR}"
export EDITOR='nvim'
export BROWSER='zen-browser'
export HISTORY_IGNORE="(ls|ll|lt|ld|upgrade|.1|.2|.3|.4|.5|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
export SUDO_PROMPT="Deploying root access for %u. Password pls: "

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi



# ██╗      ██████╗  █████╗ ██████╗     ███████╗███╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
# ██║     ██╔═══██╗██╔══██╗██╔══██╗    ██╔════╝████╗  ██║██╔════╝ ██║████╗  ██║██╔════╝
# ██║     ██║   ██║███████║██║  ██║    █████╗  ██╔██╗ ██║██║  ███╗██║██╔██╗ ██║█████╗
# ██║     ██║   ██║██╔══██║██║  ██║    ██╔══╝  ██║╚██╗██║██║   ██║██║██║╚██╗██║██╔══╝
# ███████╗╚██████╔╝██║  ██║██████╔╝    ███████╗██║ ╚████║╚██████╔╝██║██║ ╚████║███████╗
# ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝     ╚══════╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝
autoload -Uz compinit
autoload -U compinit; compinit

for dump in ~/.config/zsh/zcompdump(N.mh+24); do
  compinit -d ~/.config/zsh/zcompdump
done

compinit -C -d ~/.config/zsh/zcompdump

autoload -Uz add-zsh-hook
autoload -Uz vcs_info
precmd () { vcs_info }
_comp_options+=(globdots)

zstyle ':completion:*' verbose true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma=48;5;197;1'
zstyle ':completion:*' matcher-list \
        'm:{a-zA-Z}={A-Za-z}' \
        '+r:|[._-]=* r:|=*' \
        '+l:|=*'
zstyle ':completion:*:warnings' format "%B%F{red}No matches for:%f %F{magenta}%d%b"
zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'



# ██╗    ██╗ █████╗ ██╗████████╗██╗███╗   ██╗ ██████╗     ██████╗  ██████╗ ████████╗███████╗
# ██║    ██║██╔══██╗██║╚══██╔══╝██║████╗  ██║██╔════╝     ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝
# ██║ █╗ ██║███████║██║   ██║   ██║██╔██╗ ██║██║  ███╗    ██║  ██║██║   ██║   ██║   ███████╗
# ██║███╗██║██╔══██║██║   ██║   ██║██║╚██╗██║██║   ██║    ██║  ██║██║   ██║   ██║   ╚════██║
# ╚███╔███╔╝██║  ██║██║   ██║   ██║██║ ╚████║╚██████╔╝    ██████╔╝╚██████╔╝   ██║   ███████║
#  ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝
expand-or-complete-with-dots() {
  echo -n "\e[31m…\e[0m"
  zle expand-or-complete
  zle redisplay
}
zle -N expand-or-complete-with-dots
bindkey "^I" expand-or-complete-with-dots



# ██╗  ██╗██╗███████╗████████╗ ██████╗ ██████╗ ██╗   ██╗
# ██║  ██║██║██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗╚██╗ ██╔╝
# ███████║██║███████╗   ██║   ██║   ██║██████╔╝ ╚████╔╝
# ██╔══██║██║╚════██║   ██║   ██║   ██║██╔══██╗  ╚██╔╝
# ██║  ██║██║███████║   ██║   ╚██████╔╝██║  ██║   ██║
# ╚═╝  ╚═╝╚═╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝
HISTFILE=~/.config/zsh/zhistory
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups



# ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
# ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
# ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
# ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
# ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
# ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[3~' delete-char



#  ██████╗ ██████╗  ██████╗ ██╗         ███████╗███████╗██╗  ██╗     ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
# ██╔════╝██╔═══██╗██╔═══██╗██║         ╚══███╔╝██╔════╝██║  ██║    ██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
# ██║     ██║   ██║██║   ██║██║           ███╔╝ ███████╗███████║    ██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║███████╗
# ██║     ██║   ██║██║   ██║██║          ███╔╝  ╚════██║██╔══██║    ██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║╚════██║
# ╚██████╗╚██████╔╝╚██████╔╝███████╗    ███████╗███████║██║  ██║    ╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║███████║
#  ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝    ╚══════╝╚══════╝╚═╝  ╚═╝     ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
# setopt AUTOCD              # change directory just by typing its name
setopt PROMPT_SUBST        # enable command substitution in prompt
setopt MENU_COMPLETE       # Automatically highlight first element of completion menu
setopt LIST_PACKED		   # The completion menu takes less space.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.



# ████████╗██╗  ██╗███████╗    ██████╗ ██████╗  ██████╗ ███╗   ███╗██████╗ ████████╗
# ╚══██╔══╝██║  ██║██╔════╝    ██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝
#    ██║   ███████║█████╗      ██████╔╝██████╔╝██║   ██║██╔████╔██║██████╔╝   ██║
#    ██║   ██╔══██║██╔══╝      ██╔═══╝ ██╔══██╗██║   ██║██║╚██╔╝██║██╔═══╝    ██║
#    ██║   ██║  ██║███████╗    ██║     ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║        ██║
#    ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝        ╚═╝
function dir_icon {
  if [[ "$PWD" == "$HOME" ]]; then
    echo "%B%F{cyan}%f%b"
  else
    echo "%B%F{cyan}%f%b"
  fi
}

PS1='%B%F{blue}%f%b  %B%F{magenta}%n%f%b $(dir_icon)  %B%F{red}%~%f%b${vcs_info_msg_0_} %(?.%B%F{green}.%F{red})%f%b '

# command not found
command_not_found_handler() {
    printf "%s%s? wat da fuck is dat?!\n" "$acc" "$0" >&2
    return 127
}



# ████████╗███████╗██████╗ ███╗   ███╗    ████████╗██╗████████╗██╗     ███████╗
# ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║    ╚══██╔══╝██║╚══██╔══╝██║     ██╔════╝
#    ██║   █████╗  ██████╔╝██╔████╔██║       ██║   ██║   ██║   ██║     █████╗
#    ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║       ██║   ██║   ██║   ██║     ██╔══╝
#    ██║   ███████╗██║  ██║██║ ╚═╝ ██║       ██║   ██║   ██║   ███████╗███████╗
#    ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝       ╚═╝   ╚═╝   ╚═╝   ╚══════╝╚══════╝
function xterm_title_precmd () {
    print -Pn -- '\e]2;%n@%m %~\a'
    [[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
    print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
    [[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (kitty*|alacritty*|tmux*|screen*|xterm*) ]]; then
    add-zsh-hook -Uz precmd xterm_title_precmd
    add-zsh-hook -Uz preexec xterm_title_preexec
fi



#  █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
# ███████║██║     ██║███████║███████╗█████╗  ███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
# ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
# General
alias cat="bat --color=always"
alias ls='eza -a --icons=always --color=always'
alias ll='eza -lha --icons=always --color=always --group-directories-first'
alias ld='eza -lhD --icons=always --color=always'
alias lt='eza --icons=always --color=always --tree'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias upgrade='yay -Syu'
alias mkdir='mkdir -p'
alias mirrors="sudo cachyos-rate-mirrors"

# Pacman - https://wiki.archlinux.org/index.php/Pacman_Tips
alias pacupg='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias paclean='sudo pacman -Sc'
alias pacins='sudo pacman -U'
alias paclr='sudo pacman -Scc'
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Rns'
alias pacrep='pacman -Si'
alias pacreps='pacman -Ss'
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
alias pacinsd='sudo pacman -S --asdeps'
alias pacmir='sudo pacman -Syy'
alias paclsorphans='sudo pacman -Qdt'
alias pacfileupg='sudo pacman -Fy'
alias pacfiles='pacman -F'
alias pacls='pacman -Ql'
alias pacown='pacman -Qo'
alias pacupd="sudo pacman -Sy"

# Yay - https://github.com/Jguer/yay
alias yaconf='yay -Pg'
alias yaclean='yay -Sc'
alias yaclr='yay -Scc'
alias yaupg='yay -Syu'
alias yasu='yay -Syu --noconfirm'
alias yain='yay -S'
alias yains='yay -U'
alias yare='yay -R'
alias yarem='yay -Rns'
alias yarep='yay -Si'
alias yareps='yay -Ss'
alias yaloc='yay -Qi'
alias yalocs='yay -Qs'
alias yalst='yay -Qe'
alias yaorph='yay -Qtd'
alias yainsd='yay -S --asdeps'
alias yamir='yay -Syy'
alias yaupd="yay -Sy"

#  █████╗ ██╗   ██╗████████╗ ██████╗     ███████╗████████╗ █████╗ ██████╗ ████████╗
# ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗    ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝
# ███████║██║   ██║   ██║   ██║   ██║    ███████╗   ██║   ███████║██████╔╝   ██║
# ██╔══██║██║   ██║   ██║   ██║   ██║    ╚════██║   ██║   ██╔══██║██╔══██╗   ██║
# ██║  ██║╚██████╔╝   ██║   ╚██████╔╝    ███████║   ██║   ██║  ██║██║  ██║   ██║
# ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝     ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝

fastfetch
