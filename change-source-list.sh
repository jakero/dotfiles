#!/bin/sh

SOURCES_LIST='/etc/apt/sources.list'
SOURCES_LIST_BACKUP="$SOURCES_LIST.backup"

# Backup sources.list
if [ ! -f "$SOURCES_LIST_BACKUP" ]; then
  cp "$SOURCES_LIST" "$SOURCES_LIST_BACKUP"
fi

# Repositories
ARCHIVE='([a-z]{2}.)?archive.ubuntu.com'
SECURITY='security.ubuntu.com'
KAKAO='mirror.kakao.com'

# Change archive repositories
sed -i -E "s/$ARCHIVE/$KAKAO/g" $SOURCES_LIST

# Change security repositories
sed -i "s/$SECURITY/$KAKAO/g" $SOURCES_LIST