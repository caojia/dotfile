alias ls="ls -G"
alias diff="colordiff"
alias gssh='luit -encoding gb2312 ssh'
export GREP_OPTIONS='--color=auto'
source $HOME/.rvm/scripts/rvm
export CDPATH=.:$HOME
export N_PREFIX=$HOME/.n
alias lg='log --date=iso --pretty=format:\"%Cred%h %C(white)%an %C(yellow)%ad %C(blue)%d%n        %s\"'
alias gp='git cherry master | grep "+" | cut -d " " -f 2 | xargs git show -s --date=iso --pretty=format:"%Cred%h %C(blue)%an %C(yellow)%ad%n%s"'
alias hreboot='rm ~/Library/Preferences/ByHost/com.apple.loginwindow.*; sudo reboot'
alias hshutdown='sudo shutdown -h now'

svndiff()
{
  svn diff "${@}" | view -
}

bridge()
{
    ssh -L 3389:10.16.92.$@:3389 ppp
}

pwdgen()
{
    cat /dev/urandom | LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w $@ | sed 1q
}

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
# Finished adapting your PATH environment variable for use with MacPorts.
source $HOME/.git-prompt.sh
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
PS1='\w$(__git_ps1 " (\[\e[1;35m\]%s\[\e[m\])") (\[\e[1;31m\]$(~/.rvm/bin/rvm-prompt)\[\e[m\])\$ '


#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/pyenv-virtualenvwrapper
#export PIP_VIRTUALENV_BASE=$WORKON_HOME
#export PIP_RESPECT_VIRTUALENV=true
