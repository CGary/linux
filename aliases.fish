# DOCKER
alias deit 'docker exec -it'
alias de 'docker exec'
alias dl 'docker logs --tail 10000 -f'
alias dr 'docker restart'
alias ds 'docker stop'
alias dcud 'docker compose up -d'
alias dcd 'docker compose down'
alias dcs 'docker compose stop'
alias dcr 'docker compose restart'
# Se cambió $(...) por (...) para la sintaxis de Fish
alias dcp 'docker pause (docker compose ps -q)'
alias dcu 'docker unpause (docker compose ps -q)'

# APT_GET
# Se reemplazó el alias "_" por "sudo" para mayor claridad
alias psyu 'sudo pacman -Syu'
alias psyuf 'sudo pacman -Syu --noconfirm'

# SYSTEM
alias rb 'sudo reboot'
alias sus 'systemctl suspend'
alias locksus 'i3lock -c 000000 && systemctl suspend'
alias lock 'i3lock --blur 0 --ring-width 7.0 --inside-color=00000000 --ring-color=ffffffff --insidever-color=00000000 --ringver-color=ffffffff --insidewrong-color=00000000 --ringwrong-color=ffffffff --line-color=00000000 --keyhl-color=ffffffff --bshl-color=ffffffff --separator-color=00000000 --verif-color=ffffffff --wrong-color=ffffffff --modif-color=ffffffff'
alias ll 'exa -lhG'
alias la 'exa -lhGa'
alias clr 'clear'
alias cl 'clear && cd'
alias clip 'xclip -sel c'
alias compress 'tar czvf'
alias decompress 'tar xzvf'
alias recordm4a 'ffmpeg -f pulse -i default -f pulse -i alsa_output.pci-0000_00_1f.3.analog-stereo.monitor -filter_complex amix=inputs=2:duration=longest -c:a aac -b:a 128k'

#END
