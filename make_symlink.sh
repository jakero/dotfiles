#!/bin/bash

echo
echo '################'
echo '# Make symlink #'
echo '################'

DOTFILES_PATH="${HOME}/.dotfiles"

# Backup
function backup() {

  FILE="${HOME}/${1}"
  BACKUP_FILE="${FILE}.backup"

  echo "Target : '${FILE}'"
  echo '-> Check file exist.'

  if [ -f ${FILE} ]; then
    echo "-->'${FILE}' is exist."
    echo '-> Check symlink exist.'
    if [ -L ${FILE} ]; then
      echo "-->'${FILE}' is symlink."
      rm ${FILE}
      echo "-->'${FILE}' is deleted."
    else
      echo "-->'${FILE}' is not symlink."
    fi

    echo '-> Check backup file exist.'
    if [ -f ${BACKUP_FILE} ]; then
      echo "-->'${BACKUP_FILE}' is exist."
    else
      echo "-->'${BACKUP_FILE}' is not exist."
      mv ${FILE} ${BACKUP_FILE}
      echo "-->'${BACKUP_FILE}' is created."
    fi

  else
    echo "-->'${FILE}' is not exist."
    return
  fi
}

# Make symlink
function make_symlink() {
  ln -s "${DOTFILES_PATH}/${1}" "${HOME}/${1}"
}

# test
backup "test.sh"
make_symlink "test.sh"

# .zshrc

# alias.zsh

# .gitconfig
