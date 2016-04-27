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

# Common local bins
export PATH=$PATH:$HOME/Projects/bin

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME

# Maven
export MVN_HOME=$HOME/Projects/bin/apache-maven-3.3.3
export PATH=$PATH:$MVN_HOME/bin

# Gradle
export GRADLE_HOME=$HOME/Projects/bin/gradle-2.7
export PATH=$PATH:$GRADLE_HOME/bin

# Scala
# export SCALA_HOME=$HOME/Projects/bin/scala-2.11.7
 #export PATH=$PATH:$SCALA_HOME/bin

# Typesafe Activator
export PATH=$PATH:$HOME/Projects/bin/typesafe-activator

# The next line updates PATH for the Google Cloud SDK.
source '/Users/alex/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/alex/google-cloud-sdk/completion.bash.inc'

# PHP Composer
export COMPOSER_BIN=$HOME/.composer/vendor/bin
export PATH=$PATH:$COMPOSER_BIN

# Android SDK
export ANDROID_PLATFORM_TOOLS=$HOME/Library/Android/sdk/platform-tools
export ANDROID_TOOLS=$HOME/Library/Android/sdk/tools
export PATH=$PATH:$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS

# Homebrew
export BREW_PATH=/usr/local/sbin
export PATH=$PATH:$BREW_PATH

export CS=/home/alex/bin
export PATH=$PATH:$CS

# Homebre analytics opt-out
export HOMEBREW_NO_ANALYTICS=1
