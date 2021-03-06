#!/bin/bash

echo
echo "############################"
echo "# Change sources.list file #"
echo "############################"

# Backup sources.list
echo '-> Back up "sources.list" to "sources.list.backup"'

SOURCES_LIST='/etc/apt/sources.list'
SOURCES_LIST_BACKUP="${SOURCES_LIST}.backup"

if [ ! -f "${SOURCES_LIST_BACKUP}" ]; then
  cp "${SOURCES_LIST}" "${SOURCES_LIST_BACKUP}"
fi

# Change repositories
echo "-> Change repositories"

ARCHIVE='([a-z]{2}.)?archive.ubuntu.com'
SECURITY='security.ubuntu.com'
KAKAO='mirror.kakao.com'

sed -i -E "s/${ARCHIVE}/${KAKAO}/g" ${SOURCES_LIST}
sed -i "s/${SECURITY}/${KAKAO}/g" ${SOURCES_LIST}

echo -e "Done.\n"