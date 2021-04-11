#!/bin/sh

# Install zsh
echo ""
echo "###############"
echo "# Install ZSH #"
echo "###############"

apt install zsh -y

# Install Oh-My-Zsh
echo ""
echo "#####################"
echo "# Install Oh-My-Zsh #"
echo "#####################"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "-> Done"