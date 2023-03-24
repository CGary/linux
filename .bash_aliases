#!/usr/bin/env bash

# DOCKER
alias dei='docker exec -it'
alias de='docker exec'
alias dl='docker logs --tail 10000 -f'
alias dr='docker restart'
alias ds='docker stop'
alias dcud='docker compose up -d'
alias dcd='docker compose down'

# APT_GET
alias agd='_ apt-get update'
alias agg='_ apt-get upgrade -y'

# SYSTEM
alias rb='_ reboot'
alias sys='systemctl suspend'
alias locksys='i3lock -c 000000 && systemctl suspend'
alias lock='i3lock -c 000000'
alias bat='batcat'
alias ll='exa -lhG'
alias la='exa -lhGa'
alias clr='clear'
alias clip='xclip -sel c'
alias compress='tar czvf'
alias decompress='tar xzvf'

# CNN
alias cnn-dev-front='ssh -i /home/cgary/.ssh/gary.pem ubuntu@ec2-54-208-169-214.compute-1.amazonaws.com'
alias cnn-stg-front='ssh -i /home/cgary/.ssh/gary.pem ubuntu@ec2-3-83-12-130.compute-1.amazonaws.com'
alias cnn-prod-front='ssh -i /home/cgary/.ssh/gary.pem ubuntu@ec2-34-226-194-75.compute-1.amazonaws.com'
alias cnn-dev-back='ssh -i /home/cgary/.ssh/gary.pem ubuntu@ec2-54-159-199-20.compute-1.amazonaws.com'
alias cnn-stg-back='ssh -i /home/cgary/.ssh/gary.pem ubuntu@ec2-54-226-163-218.compute-1.amazonaws.com'

#END
