
######################################################################################################
### Append this to your existing ~/.bash_aliases file; create one in your home directory if needed ###
######################################################################################################

# Dependencies: conda
# See the scripts folder in this repo for an Ubuntu install script link to Anaconda's instructions


# Server Connects #
# Use these blocks as examples to add quick connects to your system. # 
######################################################################

## SERVER 1
### Change the part after the equal's sign to your server's username.
user=your_ssh_username
### Replace this empty IP with your server's IP address.
ip=0.0.0.0
### Assuming you've followed the previous steps, you'll be able to connect to your server by typing `srv` from a bash terminal.  
alias srv="ssh $user@$ip"

## NOTE: after modifying this file to suit your needs, don't forget to reload your terminal so the correct action takes place 

## SERVER 2
kfuser=kf
kfip=0.0.0.0
alias kfsrv="ssh $kfuser@$kfip"
### Jump to local directory for server development and activate server dev environment with conda
alias userdev='cd /home/clients/kf/klfweb_dev/kfdev && conda activate kfdev && cl'

# CL TIMESAVERS #
#################

## open ~/.bashrc with nano
alias bashmod="nano ~/.bashrc"

## append to bashrc
alias bashadd="echo $1 >> ~/.bashrc"
### example (remove the hash and paste in your bash terminal)
# bashadd "some text to append to ~/.bashrc"

## show distro name
alias distro="lsb_release -cs"

## ls & clear 
alias l="ls -lah"
alias c="clear"
alias cl="clear && ls -lah"
alias lm="ls -l | more" 

## Alias Creation Helpers
### Edit this file
alias alsmod="nano ~/.bash_aliases"
### Search for any word or quoted phrase in this file
alias alsfind="cat ~/.bash_aliases | grep -i $1"

## Apt
alias up="sudo apt update && sudo apt upgrade -y"
alias updist="sudo apt update && sudo apt upgrade -y && sudo apt-get dist-upgrade -y"
alias aptholds="dpkg --get-selections | grep hold"
alias aptit="sudo apt install"
alias aptfind="apt search"

## Conda
alias condup='conda update conda -y'
alias condenvs="conda env list"
alias namedenv="conda create -n $1"

## Django
alias runsrv="python3 -m manage.py runserver"

## Docker
### ...since I frequently forget to use docker as a superuser, but don't want to sabotage my security
alias docker="sudo docker" 

## docker-compose
alias dc="docker-compose"

# this prints out a quick reference from the terminal
alias dcpg="cat ~/code/scripts/docker/stack.yml"

## Docker-machine
alias dm='docker-machine'

## Doctl
alias dc='doctl'

## Git
### create a repository
alias gitwork='git init . && touch README && git add -A && git commit -m "working repo created" && git remote add origin $1 && git put -u origin master'
alias cln="git clone"
alias gitscript="cd ~/code/scripts/git && cl"

## Gogh
### Install Color Themes for Bash
alias goghit='bash -c  "$(wget -qO- https:/git.io/vQgMr)"'

## Pip
alias pipup="python3 -m pip install --upgrade pip"
alias pipit="python3 -m pip install"

## docker-postgres
### Start a postgres instance
alias docker-postgres="echo 'docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres'"

## Interactive docker-postgres
alias docker-psql="echo 'docker run -it --rm --network some-network postgres psql -h some-postgres -U postgres'"

## Python
alias p3m="python3 -m"

## Sourcing
alias src="source ~/.bashrc"

## SSH
### Print ssh keys
alias lssrv="cat ~/.bash_aliases | grep ssh"
alias lskeys="cat ~/.ssh/*.pub"

### Copy ssh keys to server; use preset login
alias sshadd="scp-copy-id $1"

## Password Management
### Show Password Generation Options
alias mkpass="cat ~/code/scripts/bash/bash.generate.random.alphanumeric.string.sh"
alias passgen="cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#*' | fold -w 32 | head -n 1"


# JUMP TO WORKING DIR; ACTIVATE VM; LIST CONTENTS #
###################################################

## Script directory jumps; these will only work if you have the same file structure as me, but you can update the directory to something that exists on your system.
alias scriptmode="cd /home/code/scripts && cl"
alias bashscript="cd ~/code/scripts/bash && cl"

## Code Mode (no vm)
alias codemode="cd ~/code && cl"

## Like codemode, with updates for pip and conda
alias codeup="cd ~/code && up && pipup && condup && cl"

### Check out jupyter examples
alias jupyter-examples="cd /home/code/jupyter/extension-examples && conda activate data_science_env && cl"

### Pytask
alias pytask="cd /home/code/apps/pytask && conda activate pytask_env && cl"

### Library
alias lib="cd ~/library"

### Jump to my git repos
alias repos="cd ~/repos && cl"

### Data warehouse
alias datamart="cd ~/library/data && cl"

### Materials data warehouse
alias data-materials="cd ~/library/data/materials && cl"

## Open vs-code cheatsheet
alias codecheats="/home/$USER/library/cheatsheets/vs-code/keyboard-shortcuts-linux.pdf"

