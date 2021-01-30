# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


alias affichage="ls -all"

alias rm='rm -i'  ##use with caution with script
alias untar='tar -zxvf'

#Want to download something but be able to resume if something goes wrong?
alias wget='wget -c'

#Need to generate a random, 20-character password for a new online account?
alias getpass="openssl rand -base64 20"

#Downloaded a file and need to test the checksum?
alias sha='shasum -a 256'

#limit to 5 pings.
alias ping='ping -c 5'

#Start a web server in any folder you'd like.
alias www='python -m SimpleHTTPServer 8000'

###speed test
alias speed='speedtest-cli --server XYZ --simple'

#Need to know your local IP address?
alias ipe='curl ipinfo.io/ip'


