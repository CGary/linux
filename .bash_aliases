#!/usr/bin/env bash

# DOCKER
alias deit='docker exec -it'
alias de='docker exec'
alias dl='docker logs --tail 10000 -f'
alias dr='docker restart'
alias ds='docker stop'
alias dcud='docker compose up -d'
alias dcd='docker compose down'
alias dcs='docker compose stop'
alias dcr='docker compose restart'

# APT_GET
alias agd='_ apt-get update'
alias agg='_ apt-get upgrade -y'

# SYSTEM
alias rb='_ reboot'
alias sus='systemctl suspend'
alias locksus='i3lock -c 000000 && systemctl suspend'
alias lock='xset dpms force off && i3lock -c 000000'
alias bat='batcat'
alias ll='exa -lhG'
alias la='exa -lhGa'
alias clr='clear'
alias cl='clear && cd'
alias clip='xclip -sel c'
alias compress='tar czvf'
alias decompress='tar xzvf'

cursor() {
  /opt/cursor.appimage "$@" </dev/null &>/dev/null &!
}

#END
