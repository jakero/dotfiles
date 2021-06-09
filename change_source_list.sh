#!/bin/bash

echo
echo '############################'
echo '# Change sources.list file #'
echo '############################'

SOURCES_LIST='/etc/apt/sources.list'
SOURCES_LIST_BACKUP="${SOURCES_LIST}.backup"

# Backup sources.list
if [ -f "${SOURCES_LIST_BACKUP}" ]; then
  echo "-> Backup: 'sources.list.backup' is exist."
else
  echo "-> Backup: 'sources.list' to 'sources.list.backup'."

  cp "${SOURCES_LIST}" "${SOURCES_LIST_BACKUP}"
fi

# Change repositories
echo '-> Change repositories'

ARCHIVE='([a-z]{2}.)?archive.ubuntu.com'
SECURITY='security.ubuntu.com'
KAKAO='mirror.kakao.com'

sed -i -E "s/${ARCHIVE}/${KAKAO}/g" ${SOURCES_LIST}
sed -i "s/${SECURITY}/${KAKAO}/g" ${SOURCES_LIST}

echo "-> Done.\n"
