. ~/git/dev_settings/bash/git-prompt.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export PS1='\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;6m\][\[$(tput sgr0)\]\[\033[38;5;202m\]\w\[$(tput sgr0)\]\[\033[38;5;6m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]$(__git_ps1 " (%s)")$'

export CATALINA_HOME=~/dev_tools/apache-tomee-webprofile-7.0.2
export JAVA_HOME=`/usr/libexec/java_home`
export JRE_HOME=$JAVA_HOME/jre
. ~/git/dev_settings/bash/git-completion.bash
