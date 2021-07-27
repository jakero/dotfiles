#!/bin/sh

# Install zsh
echo
echo '###############'
echo '# Install ZSH #'
echo '###############'

apt -y install zsh

# Install Oh-My-Zsh
echo
echo '#####################'
echo '# Install Oh-My-Zsh #'
echo '#####################'

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"
ZSH_PLUGINS="${ZSH_CUSTOM}/plugins"

# Install Oh-My-Zsh Plugins : zsh-completions
echo
echo '###############################################'
echo '# Install Oh-My-Zsh Plugins : zsh-completions #'
echo '###############################################'

git clone https://github.com/zsh-users/zsh-completions "${ZSH_PLUGINS}/zsh-completions"

# Install Oh-My-Zsh Plugins : zsh-autosuggestions
echo
echo '###################################################'
echo '# Install Oh-My-Zsh Plugins : zsh-autosuggestions #'
echo '###################################################'

git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_PLUGINS}/zsh-autosuggestions"

# Install Oh-My-Zsh Plugins : fast-syntax-highlighting
echo
echo '########################################################'
echo '# Install Oh-My-Zsh Plugins : fast-syntax-highlighting #'
echo '########################################################'

git clone https://github.com/zdharma/fast-syntax-highlighting.git "${ZSH_PLUGINS}/fast-syntax-highlighting"

# Install Oh-My-Zsh Plugins : autojump
echo
echo '########################################'
echo '# Install Oh-My-Zsh Plugins : autojump #'
echo '########################################'

apt -y install autojump

# Install Oh-My-Zsh Plugins : alias-tips
echo
echo '##########################################'
echo '# Install Oh-My-Zsh Plugins : alias-tips #'
echo '##########################################'

git clone https://github.com/djui/alias-tips.git "${ZSH_PLUGINS}/alias-tips"

# Install Theme : Powerlevel10k
echo
echo '#################################'
echo '# Install Theme : Powerlevel10k #'
echo '#################################'

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM}/themes/powerlevel10k"

# Change default shell
echo
echo '########################'
echo '# Change default shell #'
echo '########################'

ZSH_PATH="$(which zsh)"

echo "Current shell (\$SHELL)\t: ${SHELL}"
echo "Path of ZSH\t\t: ${ZSH_PATH}"

chsh -s "${ZSH_PATH}"

echo "Changed shell (\$SHELL)\t: ${SHELL}"

# Reload ".zshrc"
echo
echo '#################'
echo '# Reload .zshrc #'
echo '#################'

. "${HOME}/.zshrc"

echo "-> Done.\n"
