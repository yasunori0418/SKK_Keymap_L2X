#!/bin/bash

config_dir=$HOME/.config/libskk/rules/L2X/

mkdir -p $config_dir
cp -r keymap $config_dir
cp -r rom-kana $config_dir
cp metadata.json $config_dir
