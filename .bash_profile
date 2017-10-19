# show/hide dotfiles and directories in finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# https server
alias https-server='http-server --ssl --cert ~/.ssl/localhost.crt --key ~/.ssl/localhost.key -a localhost -o'

# git shortcuts
alias qs='git status'
alias qa='git add .'
alias qc='git commit -m'
alias q1='git pull -r'
alias q2='git push'

alias ww='q1; q2'