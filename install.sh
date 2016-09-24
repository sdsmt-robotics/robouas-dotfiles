add-apt-repository -y ppa:webupd8team/sublime-text-3
add-apt-repository -y ppa:ravefinity-project/ppa
add-apt-repository -y ppa:nilarimogard/webupd8
add-apt-repository -y ppa:numix/ppa
add-apt-repository -y ppa:webupd8team/atom

apt install chromium-browser ambiance-blackout-flat-colors ambiance-flat-colors numix-icon-theme-circle atom traceroute screenfetch pep8 gparted indicator-netspeed unp git gnome-tweak-tool htop pandoc screen sl vim sublime-text-installer dconf-editor pithos texmaker openssh-server

echo "==================================\nRemember to install fonts\n=================================="
echo "Starting gnome-tweak-tool..."
echo "Don't forget to set icon theme, color scheme, power settings"
echo "    Ambiance-Blackout-Flat-Red"
echo "    Numix-Circle"
echo "Remember to change the default terminal profile preferences"
echo "Remember to set default text editor to Sublime"
echo "add \"Defaults insults\" to /etc/sudoers"
echo "==================================\nGetting Dotfiles\n=================================="

gnome-tweak-tool

echo "Disabling guest log-in"
sudo sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" >/usr/share/lightdm/lightdm.conf.d/50-no-guest.conf'

echo "Installing IPython, IPython Notebook, and Python libraries"
apt install python3-setuptools python3-pip python-pip python-setuptools python-pygments ipython3 python3-matplotlib python3-sympy python3-scipy python3-numpy python3-networkx python3-nmap python3-pandas python3-seaborn
pip3 install jupyter

clear
screenfetch
