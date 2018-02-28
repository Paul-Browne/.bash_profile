#python related stuff
export PATH=/usr/local/opt/python/libexec/bin:$PATH

#git related stuff (some errors in path...)
export PATH=/usr/local/git/bin:$PATH


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

# clear the terminal
alias zz='clear && printf "\e[3J"'

# npm run
alias nr='npm run'


alias pbxyz='ssh paul@158.69.195.23'

# quick bootstrap a html5 project
alias bs='function _bs(){ cd; git clone https://github.com/Paul-Browne/html5-gulp-boilerplate.git $1; cd $1; git remote set-url origin https://github.com/Paul-Browne/$1.git; git remote -v; echo "You will probably want to change a few fields in the package.json, such as name, repository url, author etc.";};_bs'


source ~/bash_profile/git_completion.bash

#source ~/bash_profile/.setup_npm
#source ~/bash_profile/.setup_brew

#bash <(curl -s https://raw.githubusercontent.com/Paul-Browne/bash_profile/master/test.txt)


