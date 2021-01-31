#!/bin/bash

# Install Miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
sync
bash ~/miniconda.sh -b -p
sync
source $HOME/.bashrc

