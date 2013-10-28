alias aptsearch="sudo aptitude search"
alias aptinstall="sudo aptitude install"
alias aptremove="sudo aptitude remove"
alias aptpurge="sudo aptitude purge"
alias aptupdate="sudo aptitude update"
alias aptupgrade="sudo aptitude upgrade"
alias aptautoremove="sudo apt-get autoremove"

alias s=sudo

alias lsl="ls -l"
alias lsa="ls -a"
alias lsal="ls -al"
alias lsla="ls -al"

alias c=clear

alias gpull="git pull"
alias gpush="git push"
alias gstash="git stash"
alias gcommit="git commit -m"
alias glog="git log"
alias gstat="git status"
alias gstatus="git status"
alias gbranch="git branch"
alias gcheckout="git checkout"
alias grevert="git revert"
alias greset="git reset"
alias gadd="git add"
alias grm="git rm"
alias gdiff="git diff --patience"
alias gdiffw="git diff --color-words --patience --diff-filter=MTUXB"
alias gdiffm="git diff --patience --diff-filter=MTUXB"
alias gdiffam="git diff --patience --diff-filter=AMTUXB"
alias gshow="git show"

# CD without cd, correct spelling errors in cd
shopt -s autocd cdspell dirspell
