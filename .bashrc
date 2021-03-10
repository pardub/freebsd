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

### Start Bash Powerline config
 powerline-daemon -q
  1 POWERLINE_BASH_CONTINUATION=1
  2 POWERLINE_BASH_SELECT=1
  3 source /home/marc/.local/lib/python3.9/site-packages/powerline/bindings/bash/powerline.sh
### End Bash Powerline config

# User specific aliases and functions

##########EXTRA INFO##########
########To disable an alias, add "\" before the alias####
##########EXTRA INFO##########
alias ll='ls -alh'
alias h='history'
alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'
alias diffy='diff -y --suppress-common-lines --width=250'
alias gpa='git-pull-all'
alias untar='tar -zxvf'
alias c='clear'

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
alias ipe='curl ipinfo.io/ip/'

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


#-------------------------------------------------------------
# Git Alias Commands
#-------------------------------------------------------------
alias gst="git status"
alias ga="git add"
alias gaa="git add ."
alias gau="git add -u"
alias gci="git commit -m"
alias gca="git commit -am"
alias gbr="git branch"
alias gbd="git branch -d"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gt="git stash"
alias gta="git stash apply"
alias gm="git merge"
alias gr="git rebase"
alias gl="git log --oneline --decorate --graph"
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias glga="git log --graph --oneline --all --decorate"
alias gb="git branch"
alias gs="git show"
alias gd="diff --color --color-words --abbrev"
alias gdc="git diff --cached"
alias gbl="git blame"
alias gps="git push"
alias gpl="git pull"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias go="git checkout "
alias gk="gitk --all&"
alias gx="gitx --all"
alias ghist="log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
alias gtype="cat-file -t"
alias gdump="cat-file -p"

# show ignored files by git
alias gx="ign = ls-files -o -i --exclude-standard"

# Untrack Files without deleting them
alias grmc="git rm -r --cached"


