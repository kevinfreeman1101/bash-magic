#!/bin/bash

# updates
apt update -y
apt-get -y install screen git curl gcc make g++ python-dev unzip

git clone https://github.com/fastai/fastbook.git

# Bash Magic setup
git clone https://github.com/kevinfreeman1101/bash-magic.git
sync
mv bash-magic/.bash_aliases $HOME/$USER


# Install Conda
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O ~/anaconda.sh
bash ~/anaconda.sh -b -p $HOME/anaconda
eval "$(/Users/biggus-kickus/anaconda/bin/conda shell.bash hook)"
conda init
sync
conda install conda

# create a virtual environment
conda create --name fastai
conda activate fastai

# install fastai
conda install -c fastai -c pytorch -c anaconda fastai gh anaconda

# install Jupyter Lab
conda install jupyterlab
conda install -c conda-forge jupyter_contrib_nbextensions
