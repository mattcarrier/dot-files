# variables
export PS1="\[\033[01;31m\]\u@\h \w$ \[\033[0m\]"

# aliases
# maven
alias mci='mvn clean install'
alias mcint='mvn clean install -Dmaven.test.skip=true'
alias mc='mvn compile'
alias mcnt='mvn compile -Dmaven.test.skip=true'
alias mi='mvn install'
alias mint='mvn install -Dmaven.test.skip=true'
alias mp='mvn package'
alias mpnt='mvn package -Dmaven.test.skip=true'

# java
alias javadebug='java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=4000,suspend=n'

# general commands
alias ll='ls -laG'
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
