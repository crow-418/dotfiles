# Get rid of fish greeting
set -g fish_greeting ""

# Environment Variables
set -x EDITOR "nvim"
set -x GOPATH "$HOME/.go"
set -x ZSH "$HOME/.oh-my-zsh"
set -x MANPAGER "nvim +Man!"

# Aliases
alias sudo "doas"
alias ns "tmux new-session -s"
alias la "ls -a"
alias download-audio "yt-dlp --extract-audio --audio-format mp3 --add-metadata --no-playlist --embed-thumbnail"
alias download-video "yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
alias img "feh"
alias ff "fastfetch"
alias gs "git status"
alias gl "git log"
alias gc "git commit"

export GTK_THEME=Adwaita:dark
export XDG_CURRENT_DESKTOP=sway

set -Ux PIPEWIRE_LATENCY 128/48000
set -Ux JACK_PROMISCUOUS_SERVER jack
