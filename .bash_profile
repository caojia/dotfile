if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export CDPATH=.:$HOME:$HOME/Documents/Workspace

export GOPATH=$HOME/Documents/Workspace/go

export PATH=$PATH:/usr/local/opt/go/libexec/bin:$HOME/bin:$GOPATH/bin

if [ -f /usr/local/opt/pyenv/completions/pyenv.bash ]; then
    . /usr/local/opt/pyenv/completions/pyenv.bash
fi

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias reset-cache="sudo killall -HUP mDNSResponder"

pwdgen()
{
	cat /dev/urandom | LC_CTYPE=C tr -dc 'a-zA-Z0-9' | fold -w $@ | sed 1q
}

DOCKER_HOST=tcp://192.168.10.24:2375
