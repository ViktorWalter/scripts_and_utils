wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
ubuntu-report -f send no
sudo apt remove dunst popularity-contest -y
sudo apt purge ubuntu-report popularity-contest apport whoopsie -y
sudo killall dunst
sudo apt install neovim xfce4-notifyd conky-all fatrace iotop libfftw3-dev mpg123 debtree npm gnome-tweak-tool uuid-dev ruby-full rubygems rake krita inkscape python3-tk golang mesa-utils unclutter mpv -y
sudo apt install --install-recommends winehq-staging
sudo gem install rake ncurses-ruby sup gpgme optimist

systemctl --user start xfce4-notifyd
ln -s ~/.i3/dotXresoures ~/.Xresources
ln -s ~/.i3/dotzsrhc ~/.zshrc
ln -s ~/.i3/dotsup ~/.sup
ln -s ~/.i3/dotXresoures ~/.Xresources
ln -s ~/.i3/dotXkeymap ~/.Xkeymap
ln -s ~/.i3/dotofflineimaprc ~/.offlineimaprc
ln -s ~/.i3/dotofflineimap.py ~/.offlineimap.py
ln -s ~/.i3/dotmsmtprc ~/.msmtprc
ln -s ~/.i3/dotsup ~/.sup
ln -s ~/.i3/dotXkeymap ~/.Xkeymap
ln -s ~/git/my-linux-setup/linux_setup/dottmux.conf ~/.my.tmux.conf
sudo ln -s ~/git/networkmanager-dmenu/networkmanager_dmenu /usr/bin/
ln -s ~/.i3/nmdmenuconfig.ini ~/.config/networkmanager-dmenu/config.ini
mkdir ~/.config/networkmanager-dmenu
touch ~/.myzshrc
vim -e  .vimrc <<-SCRIPT
g/airline/s/^/"
g/tmuxline/s/^/"
g/tmuxline/normal!o Plug 'itchyny/lightline.vim'
/airline/normal!o Plug 'itchyny/lightline.vim'
x
SCRIPT

sudo touch /etc/lightdm/lightdm.conf
sudo echo "
[SeatDefaults]
autologin-user=viktor
autologin-user-timeout=0
user-session=ubuntu
# Uncomment the following, if running Unity
#greeter-session=unity-greeter
" > /etc/lightdm/lightdm.conf

echo "export GOPATH=~/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> ~/.zshrc
go get -u github.com/erroneousboat/slack-term ; cd $GOPATH/src/github.com/erroneousboat/slack-term ; go install .
ln -s ~/.i3/dotslackterm ~/.slack-term
