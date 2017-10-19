# show/hide dotfiles and directories in finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# https server
alias https-server='http-server --ssl --cert ~/.ssl/localhost.crt --key ~/.ssl/localhost.key -a localhost -o'

# git shortcuts
alias qq='git status'
alias qw='git add .'
alias qe='git commit -m'

# function qw(){
# 	git add . 
# }

# function q1(){
# 	git pull 
# }

# function q2(){
# 	git push 
# }