# debian install script
Install Debian
```bash
su root
apt update
apt upgrade -y
apt install sudo git -y
sudo adduser [user] sudo
sudo reboot
git clone https://github.com/CGary/linux.git
cd linux
./1-install-source.list
./2-install-terminal
./3-install-graphics-[system]
./4-install-alacritty.sh
[sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator "$HOME/.cargo/bin/alacritty" 50]
[sudo update-alternatives --config x-terminal-emulator]
sudo reboot
./4-install-drivers
sudo reboot
./5-install-[utilidad].sh
[sudo /opt/balenaEtcher/balena-etcher-electron]
./last-config

command -v nvm
exit
nvm install --lts
nvm install node
nvm alias default v[a.b.c]
nitrogen -> /user/shared/backgrounds

https://unetbootin.github.io/linux_download.html
Downloads 64 bits binaries
chmod +x unetbootin-linux64-[version].bin

```
# herramientas de consola
https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md

https://github.com/romkatv/powerlevel10k#getting-started

https://github.com/EliverLara/terminator-themes

(use After Dark theme)