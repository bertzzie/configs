# Git branch in prompt, like in Window's Git Bash.
parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setup Prompt
export PS1="\n\u@\h \w \[\033[33m\]\$(parse_git_branch)\[\033[00m\] \n$ "

# Language setup because some apps (i.e. sphinx)
# can't run without this.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Golang Workspace
export GOPATH=$HOME/Projects/golang
export PATH=$PATH:$GOPATH/bin
