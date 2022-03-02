#!/usr/bin/env bash
SCRIPT=$(realpath "$BASH_SOURCE[0]")
DIR=$(dirname "$SCRIPT")
ln -sf $DIR/.vimrc ~/.vimrc
ln -sf $DIR/.tmux.conf ~/.tmux.conf
ln -sf $DIR/.bashrc ~/.bashrc
