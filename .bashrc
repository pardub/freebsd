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

##########EXTRA INFO##########
########To disable an alias, add "\" before the alias####
##########EXTRA INFO##########
alias ll='ls -alh'

alias rm='rm -i'  ##use with caution with script
alias untar='tar -zxvf'

#Want to download something but be able to resume if something goes wrong?
alias wget='wget -c'

#Need to generate a random, 20-character password for a new online account?
alias getpass="openssl rand -base64 20"

#Downloaded a file and need to test the checksum?
alias sha='shasum -a 256'

#Start a web server in any folder you'd like
alias www='python -m SimpleHTTPServer 8000'

#####NETWORK
###speed test
alias speed='speedtest-cli --server XYZ --simple'

#Need to know your local IP address?
alias ipe='curl ipinfo.io/ip'

#Show open ports
alias ports='netstat -tulanp'

#limit to 5 pings.
alias ping='ping -c 5'

# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

#Clear the screen
alias c='clear'

#Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# install  colordiff package :)
alias diff='colordiff'

# handy short cuts #
alias h='history'
alias j='jobs -l'


######### FIREWALL
## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

####### Get system memory, cpu usage, and gpu memory info quickly

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'









#######GIT COMMANDS#####


