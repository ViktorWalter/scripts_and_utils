toilet "Let's go"

#Set the profile
if [ -z ${PROFILES_BOTH} ];
then  echo "export PROFILES_BOTH=\"VIKTOR_BIGBOX\"" >> ~/.bashrc
fi
export PROFILES_BOTH="VIKTOR_BIGBOX"

#Install mrs_uav_system and Tomas' setup
cd /tmp
echo '
GIT_PATH=~/git
mkdir -p $GIT_PATH
cd $GIT_PATH
sudo apt-get -y install git
git clone https://github.com/ctu-mrs/mrs_uav_system
cd mrs_uav_system
git checkout master
git pull
./install.sh -g $GIT_PATH
source ~/.bashrc' > clone.sh && source clone.sh

#Now, replace Tomas' i3 config

rm ~/.i3
cd `dirname "$0"`
ln -s `pwd`/doti3 ~/.i3

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
ubuntu-report -f send no
sudo apt remove dunst popularity-contest unattended-upgrades -y
sudo apt purge ubuntu-report popularity-contest apport whoopsie -y
sudo killall dunst
sudo apt install neovim xfce4-notifyd conky-all fatrace iotop libfftw3-dev mpg123 debtree npm gnome-tweak-tool uuid-dev krita inkscape python3-tk golang mesa-utils unclutter mpv lxpolkit tlp \
libgtk-3-dev \
libmirclient-dev \
libxkbcommon-dev \
libegl1-mesa-dev \
libwayland-dev \
libpulse-dev \
pulseaudio \
libnotify-dev \
scrot \
i3lock \
w3m \
w3m-img \
neofetch \
gstreamer1.0-{plugins-good,plugins-bad,plugins-ugly,libav} \
firefox-geckodriver \
html2text \
deluge \
audacity \
fonts-terminus \
-y

sudo pip3 install webdriver selenium

sudo apt install --install-recommends winehq-staging

wget https://www.vpn.net/installers/logmein-hamachi_2.1.0.203-1_amd64.deb
sudo dpkg -i logmein-hamachi_2.1.0.203-1_amd64.deb

cd ~/git
cd bitmap-fonts
git clone https://github.com/Tecate/bitmap-fonts.git
sudo cp -avr bitmap/ /usr/share/fonts
xset fp+ /usr/share/fonts/bitmap
fc-cache -fv
cd /etc/fonts/conf.d
sudo rm 70-no-bitmaps.conf && sudo ln -s ../conf.avail/70-yes-bitmaps.conf .
sudo dpkg-reconfigure fontconfig
cd ~/

mkdir ~/localpath 

systemctl --user start xfce4-notifyd
ln -s ~/.i3/dotzsrhc ~/.zshrc
# ln -s ~/.i3/dotXresoures ~/.Xresources
ln -s ~/.i3/dotXkeymap ~/.Xkeymap
ln -s ~/.i3/dotXkeymap ~/.Xkeymap
ln -s ~/git/my-linux-setup/linux_setup/dottmux.conf ~/.my.tmux.conf
sudo ln -s ~/git/networkmanager-dmenu/networkmanager_dmenu /usr/bin/
ln -s ~/.i3/nmdmenuconfig.ini ~/.config/networkmanager-dmenu/config.ini

~/.i3/install/theme.sh

ln -s ~/.i3/dump_site.sh ~/localpath/
ln -s ~/.i3/windows ~/localpath/
ln -s ~/.i3/playMusic.sh ~/localpath/
ln -s ~/.i3/playStudyMusic.sh ~/localpath/
ln -s ~/.i3/playSong.sh ~/localpath/
ln -s ~/.i3/imdisp.sh ~/localpath/
ln -s ~/.i3/reinstpak.sh ~/localpath/
ln -s ~/.i3/gksudo ~/localpath/
ln -s ~/.i3/deptree.sh ~/localpath/
ln -s ~/.i3/ssh-add-identity.sh ~/localpath/
ln -s ~/.i3/flashMount.sh ~/localpath/
ln -s ~/.i3/flashUmount.sh ~/localpath/
sudo mkdir /mnt/flash

mkdir ~/.config/networkmanager-dmenu
touch ~/.myzshrc
# vim -e  .vimrc <<-SCRIPT
# g/airline/s/^/"
# g/tmuxline/s/^/"
# g/tmuxline/normal!o Plug 'itchyny/lightline.vim'
# /airline/normal!o Plug 'itchyny/lightline.vim'
# x
# SCRIPT

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


sudo cp ~/.i3/thinkpad_power_management/15-brightness.conf /etc/sudoers.d/

ln -s ~/.i3/thinkpad_power_management/nvidiaRun.sh ~/localpath/

~/.i3/install/pa_applet.sh
~/.i3/install/cbatticon.sh
~/.i3/install/nordvpn.sh
~/.i3/install/sup_mail.sh
