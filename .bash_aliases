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
alias lock='i3lock -c 000000 && systemctl suspend'
alias bat='batcat'
alias ll='exa -lhG'
alias la='exa -lhGa'
alias clr='clear'
alias clip='xclip -sel c'
alias compress='tar czvf'
alias decompress='tar xzvf'

# CNN

#END
