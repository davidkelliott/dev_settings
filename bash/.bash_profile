. ~/git/dev_settings/bash/git-prompt.sh

export PS1='\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;6m\][\[$(tput sgr0)\]\[\033[38;5;202m\]\w\[$(tput sgr0)\]\[\033[38;5;6m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]$(__git_ps1 " (%s)")\n$'

. ~/git/dev_settings/bash/git-completion.bash

set -o vi
if command -v pyenv 1>/dev/null 2>&1; then
	  eval "$(pyenv init -)"
fi

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

ec2-ips () {
  aws ec2 describe-instances --filter Name=tag:owner,Values=$1 --query "Reservations[*].Instances[*].[Tags[?Key=='Name'].Value|[0],PrivateIpAddress,State.Name]" --output table --profile $2
}

alias pcl=/usr/local/bin/git-pre-commit-lint.sh
alias please='sudo $(history -p !!)'
alias update='git checkout master && git pull'
alias updatem='git checkout main && git pull'
alias branches='git branch --sort=-committerdate | head'
alias glog='git log --oneline --graph -n 10'
alias mserrors="awslogs get ccms-soa-managed-ecs ALL --start='1d' --filter-pattern=Error --profile laa-production-lz"
alias mserrorswatch="awslogs get ccms-soa-managed-ecs ALL --watch --filter-pattern=Error --profile laa-production-lz"
alias mswatch="awslogs get ccms-soa-managed-ecs ALL --watch --profile laa-production-lz"
alias aserrors="awslogs get ccms-soa-admin-ecs ALL --start='1d' --filter-pattern=Error --profile laa-production-lz"
alias aserrorswatch="awslogs get ccms-soa-admin-ecs ALL --watch --filter-pattern=Error --profile laa-production-lz"
alias aswatch="awslogs get ccms-soa-admin-ecs ALL --watch --profile laa-production-lz"
alias ec2ipsccmsdev="ec2-ips laa-ccms-members@digital.justice.gov.uk laa-development-lz"
alias ec2ipsccmstest="ec2-ips laa-ccms-members@digital.justice.gov.uk laa-test-lz"
alias ec2ipsccmspreprod="ec2-ips laa-ccms-members@digital.justice.gov.uk laa-staging-lz"
alias ec2ipsccmsprod="ec2-ips laa-ccms-members@digital.justice.gov.uk laa-production-lz"

complete -C /usr/local/bin/vault vault

