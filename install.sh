#!/usr/bin/env bash

config_dir=$HOME/.config/libskk/rules/L2X/

install() {
  [[ ! -d ${config_dir} ]] && mkdir -p ${config_dir}

  cp -r keymap ${config_dir}
  cp -r rom-kana ${config_dir}
  cp metadata.json ${config_dir}
}

uninstall() {
  [[ -d ${config_dir} ]] && rm -rf ${config_dir}
}

if [[ -n $1 ]]; then
    answer=$1
  else
    echo 'Install or Uninstall SKK_Keymap_L2X?'
    read -p "[Install|uninstall|cancel] :" answer
fi

case $answer in
  "" | "install" )
    install
    ;;
  "uninstall" )
    uninstall
    ;;
  "cancel" )
    echo 'abort script.'
    exit 1
    ;;
esac

# vim:ft=bash
