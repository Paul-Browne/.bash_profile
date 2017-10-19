# show/hide dotfiles and directories in finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# create certificates for https://localhost
alias certy="cd; mkdir .ssl; openssl req -newkey rsa:2048 -x509 -nodes -keyout .ssl/localhost.key -new -out .ssl/localhost.crt -subj /CN=localhost -reqexts SAN -extensions SAN -config <(cat /System/Library/OpenSSL/openssl.cnf <(printf '[SAN]\nsubjectAltName=DNS:localhost')) -sha256 -days 3650; sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain .ssl/localhost.crt"

# https server
alias https-server='http-server --ssl --cert ~/.ssl/localhost.crt --key ~/.ssl/localhost.key -a localhost -o'

# git shortcuts
alias qs='git status'
alias qa='git add .'
alias qc='git commit -m'
alias q1='git pull -r'
alias q2='git push'

# runs q1 then q2
alias ww='q1; q2'

source ~/bash_profile/.setup_npm
source ~/bash_profile/.setup_brew
