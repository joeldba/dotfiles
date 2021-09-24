# Created by newuser for 5.8

autoload -U compinit && compinit
autoload -U colors && colors
zmodload -i zsh/complist
setopt sharehistory
setopt extendedhistory

# vars 
PROMPT="%F{yellow}┌─%f%B%F{red}[%f%T%F{red}]%f%b%F{yellow}─%f%B%F{green}[%f%n%F{green}]%b%f%F{green}─%f%B%F{blue}[%f%~%F{blue}]%f%b
%F{yellow}└── %f%B%F{red}>%b%f%B%F{green}>%b%f%B%F{blue}>%b%f "
HISTFILE=~/.zsh_history
HISTSIZE=SAVEHIST=1000

# autostart X at login on tty1
# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec startx
# fi

# exports
export MAKEFLAGS="-j4 -l4"
export EDITOR="/usr/bin/vim"
export BROWSER="/usr/bin/firefox"

# key bindings
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[4~"   end-of-line
bindkey  "^[[3~"  delete-char

# aliases
alias ls="exa --icons -l"
alias cat="bat"
alias tree="tree -C"
alias wipehistory="rm $HOME/.zsh_history"
alias df="df -h"
# alias sudo="doas"
alias clear="clear && source ~/.zshrc"
alias gettoken="cat $HOME/Documents/gitkey.txt"
alias poweroff="/sbin/poweroff"
alias reboot="/sbin/reboot"
alias vi="vim"
alias quakespasm="quakespasm -basedir /home/rwt/.quakespasm"
alias randomwall="/home/rwt/.scripts/randomwall/randomwall.sh"
alias reboot="doas reboot"
alias poweroff="doas poweroff"
alias dang="fuck"
eval $(thefuck --alias)

# load plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-insulter/zsh.command-not-found

# enable tab-autocomplete menu highlighting
zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
  fpath=(/usr/local/share/zsh-completions $fpath)

zstyle ':completion:*' menu select

# other cmds
fortune -as
echo ""
