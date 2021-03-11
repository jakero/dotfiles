#!/bin/sh

SOURCES_LIST=/etc/apt/sources.list

# Repositories
ARCHIVE='([a-z]{2}.)?archive.ubuntu.com'
SECURITY='security.ubuntu.com'
KAKAO='mirror.kakao.com'

# Change archive repositories
sed -i -E "s/$ARCHIVE/$KAKAO/g" $SOURCES_LIST

# Change security repositories
sed -i "s/$SECURITY/$KAKAO/g" $SOURCES_LIST