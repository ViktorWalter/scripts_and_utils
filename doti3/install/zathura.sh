sudo apt install libpoppler-glib-dev -y
sudo pip3 install meson -y
pip3 install meson -y
cd ~/git
git clone git@github.com:ViktorWalter/zathura.git
git clone https://github.com/pwmt/zathura-pdf-poppler.git
cd zathura
rm -rf build && meson build && cd build && ninja && sudo ninja install
cd ~/git/zathura-pdf-poppler
rm -rf build && meson build && cd build && ninja && sudo ninja install
