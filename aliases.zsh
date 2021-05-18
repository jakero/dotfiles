# Git
alias ga='git add'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gp='git push'
alias gst='git status'

# LSDeluxe
dpkg -s lsd &> /dev/null

if [ $? -eq 0 ]; then
  alias l='lsd -l'
fi

alias la='lsd -al'