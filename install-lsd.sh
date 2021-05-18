#!bin/sh

echo
echo "####################"
echo "# Install LSDeluxe #"
echo "####################"

VERSION='0.20.1'
FILENAME="lsd_${VERSION}_amd64.deb"
URL="https://github.com/Peltoche/lsd/releases/download/${VERSION}/${FILENAME}"

# Download package
echo -e "-> Download package ...\n"

curl -LO ${URL}

# Install package
echo -e "\n-> Install package ..."

sudo dpkg -i ${FILENAME}

# Delete downloaded package
echo -e "\n-> Delete downloaded package file"

rm ${FILENAME}

echo -e "\nDone.\n"