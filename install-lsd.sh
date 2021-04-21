#!bin/sh

echo "\n####################"
echo "# Install LSDeluxe #"
echo "####################"

VERSION='0.20.1'
FILENAME="lsd_${VERSION}_amd64.deb"
URL="https://github.com/Peltoche/lsd/releases/download/${VERSION}/${FILENAME}"

# Download package
echo "--> Download package"

curl -LO $URL

# Install package
echo "\n--> Install package"

sudo dpkg -i $FILENAME

# Delete downloaded package
rm $FILENAME

echo "\n--> Done"