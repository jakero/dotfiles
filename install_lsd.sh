#!/bin/bash

echo
echo '####################'
echo '# Install LSDeluxe #'
echo '####################'

VERSION='0.20.1'
PACKAGE="lsd_${VERSION}_amd64.deb"
URL="https://github.com/Peltoche/lsd/releases/download/${VERSION}/${PACKAGE}"

# Download package
echo -e "-> Download package\n"

curl -LO "${URL}"

# Install package
echo -e "\n-> Install package"

sudo dpkg -i "${PACKAGE}"

# Delete downloaded package
echo -e "\n-> Delete downloaded package"

rm "${PACKAGE}"

echo -e "-> Done.\n"
