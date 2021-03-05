# https://powerline.readthedocs.io/en/latest/usage.html

# Expected architecture
# HOME
# '- .fonts
# '- .config


# Dependencies
sudo apt-get install neofetch -y
sudo pip3 install powerline-gitstatus

# Variables
POWERLINELOCATION=$(pip3 show powerline-status | grep Location | tr -s ' ' '#' | cut -f2 -d#)

# Fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf ~/.fonts/

fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Copy config
cp config ~/.config/powerline

# Bash
echo "" >> ~/bash.rc
echo "#Powerline" >> ~/.bashrc
echo ". $POWERLINELOCATION/powerline/bindings/bash/powerline.sh" >> ~/.bashrc

# Vim if not linked
#echo "python3 from powerline.vim import setup as powerline_setup" >> ~/.vimrc
#echo "python3 powerline_setup()" >>  ~/.vimrc
#echo "python3 del powerline_setup" >> ~/.vimrc



# z script
cd ~/tmp
git clone https://github.com/rupa/z
mv z/z.sh ~/bin
echo ". \$HOME/z.sh" >> ~/.bashrc

# Alias
echo "alias venv=\"source .env/bin/activate\"" >> .profile

# Set gnome terminal -> To change between profiles: `xdotool key shift+F10 r 1` where 1 is the profile number
#dconf reset -f /org/gnome/terminal/
#dconf load /org/gnome/terminal < gnome_terminal_settings.txt
