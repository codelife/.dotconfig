#!/bin/zsh

    # PATH
    export PATH="/usr/local/Cellar/vim/8.2.2400/bin/:/usr/local/share/python:/usr/local/bin:/usr/local/sbin/:/usr/bin:/bin:/usr/sbin:/sbin:/Users/collin/bin/:/usr/local/go/bin:/usr/local/Cellar/nginx/1.10.1/bin/"
    export EDITOR='subl -w'
    export GOPATH='/Users/collin/codelife/golang/'

    # Virtual Environment
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Projects
    #source /usr/local/bin/virtualenvwrapper.sh

    # Owner
    export USER_NAME="YOUR NAME"
    eval "$(rbenv init -)"

    # FileSearch
    function f() { find . -iname "*$1*" ${@:2} }
    function r() { grep "$1" ${@:2} -R . }

    #mkdir and cd
    function mkcd() { mkdir -p "$@" && cd "$_"; }


    export PATH=$PATH:/usr/local/Cellar/mysql@5.7/5.7.29/bin/
    # Aliases
    alias cppcompile='c++ -std=c++11 -stdlib=libc++'
    alias hsenv="source /Users/collin/codelife/virtualenv/restful/bin/activate"
    alias noahenv="source /Users/collin/codelife/virtualenv/noah/bin/activate"
    alias cdbdy='cd ~/百度云/'
    alias lss='netstat -anp tcp |grep -i listen'
    alias cdd='cd /Users/collin/codelife/devops/'
    alias cdh='cd /Users/collin/codelife/HSTOP_backend/'
    alias cdp='cd /Users/collin/codelife/devops/Ansible/playbooks/'
    alias gs='git status'
    alias ga='git add -A .'
    alias gd='git diff '
    alias gcr='git checkout release '
    alias gcm='git checkout master '
