#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR="/bin/nano"

alias 1c="/opt/1cv8t/x86_64/8.3.25.1286/1cv8t"
alias 1cv="./1cv8st"
alias spo="systemctl poweroff"
alias sps="i3lock-fancy && systemctl suspend"
alias spl="i3lock-fancy"
alias spr="systemctl reboot"
alias brc="nano .bashrc"
alias sa="ssh -p53122 ehot@90.188.48.157"
alias adm="ssh ilya@192.168.88.101"
alias viber="/home/ehot/work/apps/viber.AppImage"
alias ll="ls -la"
alias i3conf="nano .config/i3/config"
alias i3bac="cp .config/i3/config work/linux/oksion_linux/i3/config"
