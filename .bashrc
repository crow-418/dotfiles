[[ $- != *i* ]] && return
# PATHS
export PATH="$PATH:$HOME/.cargo/bin"
# bash prompt
source /usr/share/git/completion/git-prompt.sh
GIT_BRANCH='$(__git_ps1 " [%s]")'
export GIT_PS1_SHOWDIRTYSTATE=1
PS1="\[\e[1m\]\u\[\e[0m\]|\w\[\e[31;1m\]${GIT_BRANCH} \[\e[0;38;5;178m\]\\$ \[\e[0m\]"

HISTSIZE=-1
HISTFILESIZE=-1

# Spell Check
shopt -s cdspell
# Save all lines in the history file immediately
shopt -s histappend
# Scroll through past commands
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# Case unsensitive
bind 'set completion-ignore-case on'
# Autocomplete more like zsh
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind 'set show-all-if-ambiguous on'
# Rebind Ctrl + W to delete only last word
stty werase undef
bind '\C-w:unix-filename-rubout'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias music="ncmpcpp"
alias download-audio="yt-dlp --extract-audio --add-metadata --no-playlist"
alias download-video="yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
alias nvmopen="source ~/.nvm/nvm.sh"
alias img="gpicview"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
. "$HOME/.cargo/env"
export PATH=/home/iulian/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/iulian/.cargo/bin:/home/iulian/.cargo/bin
