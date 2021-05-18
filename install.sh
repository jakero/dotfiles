#!/bin/sh

# Install zsh
echo
echo "###############"
echo "# Install ZSH #"
echo "###############"

apt install zsh -y


# Install Oh-My-Zsh
echo
echo "#####################"
echo "# Install Oh-My-Zsh #"
echo "#####################"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Install Oh-My-Zsh Plugins : zsh-completions
echo
echo "###############################################"
echo "# Install Oh-My-Zsh Plugins : zsh-completions #"
echo "###############################################"

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions


# Install Oh-My-Zsh Plugins : zsh-autosuggestions
echo
echo "###################################################"
echo "# Install Oh-My-Zsh Plugins : zsh-autosuggestions #"
echo "###################################################"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Install Oh-My-Zsh Plugins : fast-syntax-highlighting
echo
echo "########################################################"
echo "# Install Oh-My-Zsh Plugins : fast-syntax-highlighting #"
echo "########################################################"

git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting


# Install Oh-My-Zsh Plugins : autojump
echo
echo "########################################"
echo "# Install Oh-My-Zsh Plugins : autojump #"
echo "########################################"

apt -y install autojump


# Install Oh-My-Zsh Plugins : alias-tips
echo
echo "##########################################"
echo "# Install Oh-My-Zsh Plugins : alias-tips #"
echo "##########################################"

git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/alias-tips


# Install Theme : Powerlevel10k
echo
echo "#################################"
echo "# Install Theme : Powerlevel10k #"
echo "#################################"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# Change default shell
echo
echo "########################"
echo "# Change default shell #"
echo "########################"

echo "Current shell (\$SHELL) : ${SHELL}"
echo "Path of ZSH : $(which zsh)"

chsh -s $(which zsh)

echo "Changed current shell (\$SHELL) : ${SHELL}"


# Reload ".zshrc"
echo
echo "###################"
echo "# Reload \".zshrc\" #"
echo "###################"

. ~/.zshrc

echo -e "-> Done.\n"