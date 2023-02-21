#!/bin/bash
#
# Intro msg.
echo ""
echo "<================>"
echo ""
echo "Hello," $USER
echo "This will install the zsh setup that, i personally use."
echo "You will maybe be promted to input the root passwd."
echo "It is required that you have zsh already installed."
echo ""
echo "<================>"
echo ""
read -p "Press enter to continue..."
#
# Warn
echo ""
echo "THIS WILL REMOVE EXITING CONFIG FILES!!!"
read -n 1 -t 2
#
# Yes, No.
read -e -p "[y/n] " choice
[[ "$choice" == [Yy]* ]] && echo "Oki" || exit ]]
#
# Fun part
read -n 1 -t .7
echo ""
echo "Copying .zshrc and shell to .config..."
cp .zshrc ~/.zshrc
cp -r shell ~/.config/shell
read -n 1 -t .7
echo ""
echo "Making dir for zsh History..."
mkdir ~/.cache
mkdir ~/.cache/zsh
mkdir ~/.cache/zsh/history
#
# Root area
echo ""
echo "Passwd area!"
read -n 1 -t 2
#
# Fun part 
echo ""
echo "Setting up fast-syntax-highlighting plugin"
read -n 1 -t .7
sudo mkdir /usr/share/zsh
sudo mkdir /usr/share/zsh/plugins
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git
sudo mv fast-syntax-highlighting /usr/share/zsh/plugins/
#
# Fun part 
echo ""
echo "Setting up pfetch (based neofetch alt.)"
read -n 1 -t .7
git clone https://github.com/dylanaraps/pfetch.git
cd pfetch && sudo make install && cd ..
#
# Setting zsh default shell
echo ""
echo "Setting zsh default shell."
echo "Please input, /usr/bin/zsh"
read -n 1 -t 2
#
# Fun part
sudo chsh $USER
#
# Done. (FINNISH)
echo ""
echo "Setup Done!"
read -p "Press enter to quit..."
