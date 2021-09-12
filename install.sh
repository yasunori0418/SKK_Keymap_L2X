#!/bin/bash

config_dir=$HOME/.config/libskk/rules/my_skkey_map/

mkdir -p $config_dir
cp -r keymap $config_dir
cp -r rom-kana $config_dir
cp metadata.json $config_dir
