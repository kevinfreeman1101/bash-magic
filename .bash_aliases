# BEGIN bash-magic

# TODO: Categorize these aliases
# TODO: Expand Alias Comments
# TODO: Complete basic documentation

# TIMESAVERS

# Reload your bash environment without having to close/open a new shell
alias src="source ~/.bashrc"

# open ~/.bashrc with nano
alias bashmod="nano ~/.bashrc"

# append to bashrc
alias bashadd="echo $1 >> ~/.bashrc"
# Example:
# bashadd "line to append to ~/.bashrc"

# Edit this file
alias alsmod="nano ~/.bash_aliases"

# APT

## Standard usage
alias up="sudo apt update && sudo apt upgrade -y"

## Full Distribution Upgrade
alias updist="sudo apt update && sudo apt upgrade -y && sudo apt-get dist-upgrade -y"

## Diagnose package holds
alias aptholds="dpkg --get-selections | grep hold"

##
alias aptit="sudo apt install"
##Example:
##[user@]

# CONDA/ANACONDA

## Upgrade conda
alias condup='conda upgrade conda -y'

## Create a new conda virtual environment (after typing `mkenv`, enter a space followed by the environments new name)
alias mkenv="conda create -n $1"
## Example: `mkenv fluffernuffer` creates a base environment called fluffernuffer.
## Example 2: `mkenv fluffernuffer python=3.8 Django` creates fluffernuffer & installs py3.8 + Django.

## Revert conda env to initial packages
alias conda0="conda install --revision 0"

# Docker, docker-compose, docker-machine
## ...since I frequently forget to call sudo for docker
alias docker="sudo docker"

## Start a Docker postgres instance
alias docker-postgres="echo 'docker run --name $1 -e POSTGRES_PASSWORD=$2 -d postgres'"
## Example usage:
## docker-postgres <container_name> <postgres_pass>
## Example 2:
## docker-postgres kevin_dev sUPPer$ECRETpa$$w0rd

## Interactive docker-postgres
## alias docker-psql="echo 'docker run -it --rm --network some-network postgres psql -h some-postgres -U postgres'"
alias docker-psql="echo 'docker run -it --rm --network $1 postgres psql -h $2 -U postgres'"


## docker-compose
alias dc="docker-compose"

## Quick stack.yml printout
alias dcpg="cat /mnt/phoenix/code/scripts/docker/stack.yml"

## Docker-machine
alias dm='docker-machine'


# Doctl
alias dc='doctl'


# GIT

## Create a git repository
alias gitwork='git init . && touch README && git add -A && git commit -m "working repo created" && git remote add origin $1 && git put -u origin master'

## Clone an online repo
alias cln="git clone"

## Jump to git scripts
alias gitscript="cd /mnt/phoenix/code/scripts/git && cl"


# PYTHON #

## This seems excessively lazy, but still reduces keystrokes
alias p3m="python3 -m"
# Example: `p3m manage.py runserver` runs the django webserver

## Run the django webserver (assumes you are in the same directory as the manage.py file)
alias runsrv="python3 -m manage.py runserver"

## Flask Server
alias flask_server="cd /mnt/phoenix/code/flask_server && conda activate flask_server && cl"

## Update pip
alias pipup="python3 -m pip install --upgrade pip"

## Pip install (list packages to install after typing "pipit ")
alias pipit="python3 -m pip install"


# SERVER MANAGEMENT

## Copy ssh keys to server (pass the keys as $1)
alias sshadd="scp-copy-id $1"

## Generate a random alphanumeric string
alias simplepass="cat /mnt/phoenix/code/scripts/bash/bash.generate.random.alphanumeric.string.sh"

## Prints out a random complex 16-digit password
alias passgen="cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#*' | fold -w 16 | head -n 1"

## Print Linux Distribution + release info
alias distro="lsb_release -a"

# SSH Connects

# Example Server "srv"
# Change the text after the equal's sign below to your server username.
user="your_ssh_username"
# Replace this empty IP with your server's IP address.
ip="0.0.0.0"
# Customize the command below by changing `srv' to whatever you want to type to login to your webserver over ssh.
alias srv="ssh $user@$ip"
# Customized example
alias loginToMyServerAlready="ssh $user@ip"

# Assuming you've followed the previous steps, save the changes to this file and reload your terminal with `src` (or `source ~/.bashrc` if this is your first time using this file). Now, you can connect to your server by typing `srv`, or the command you changed it to if you chose to customize.

# Add as many blocks as needed to connect to web servers or remote machines. In my `.bash_aliases` file, each block looks similar to:

# kfsrv
kfuser=MagnificentMarv
kfip=123.45.67.89
alias kfsrv="ssh $kfuser@$kfip"

#------------------------


# SSH #
# Print ssh keys
alias lskeys="cat ~/.ssh/*.pub"

#------------------------


# TTY ##

# Connect using tio:
alias tiocon="tio /dev/ttyUSB0"

# Find Serial tty Port
alias lstty="dmesg | grep tty"

#------------------------


# QUICK PRINTS #
# Use these to quickly print information in the terminal

# ls = list directory contents
# -l = long listing format
# -p = indicate directory by appending a slash, i.e. /dirname
alias lsp="ls -lp"

# ls = list directory contents
# -F = classify objects with */=>@| to indicate type;
# -g = group directories first
# -h = human readable file sizes
# -L = when showing file information for a symbolic link, show information for the file the link references rather than for the link itself
# -X = sort alphabetically by extension
# -p = indicate directory by appending a slash, i.e. /dirname
alias l="ls -FghLXp"

# clear
alias c="clear"
# clear && ls -FghLXp
alias cl="clear && lf"

# Show distro name
alias distro="lsb_release -cs"

# Search for any word or quoted phrase in this file
alias alsfind="cat ~/.bash_aliases | grep -i $1"
# Example: `alsfind srv` would print all my server logins (because each one contains the letters "srv")

# Print server logins (and any other lines from ~/.bash_aliases that contain "srv")
alias srvinfo="cat ~/.bash_aliases | grep ssh"


# JUMP TO WORKING DIR; DO SOMETHING USEFUL #
# These are included as generic examples of my quick jumps to various directories. Some activate virtual envs; others just navigate
# to a working folder and list contents

# Script jumps. To try these on your system, replace these paths with ones on your system.

# Go to scripts dir, clear the screen, and list contents
alias scriptmode="cd ~/code/scripts && clear && lsz"

# Go to the Bash scripts dir, clear the screen, and list contents
alias bashscript="cd ~/code/scripts/bash && clear && lsz"

# Go to my top-level code dir, clear the screen, and list contents
alias codemode="cd ~/code && clear && lsz"

# Like codemode, with updates for apt, pip, and conda
alias codeup="cd ~/code && up && pipup && lsz"

## Jump to the scripts dir
alias scriptmode="cd ~/scripts/ && clear && lsz"

## Jump to my git repos
alias repos="cd /repos && clear && lsz"
alias myrepos="cd /repos/my_repos && clear && lsz"

### Jump to the data warehouse
alias datastore="cd ~/library/data && clear && lsz"

## Open a folder containing quick references and cheat sheets with the graphical file-manager
alias cheat="xdg-open ~/library/cheatsheets/vs-code/keyboard-shortcuts-linux.pdf"

## esp32
alias esp32cam="cd /mnt/phoenix/code/esp32cam && conda activate esp32 && clear && idfenv && lsz"

### Activate espressif-idf env
alias idfenv='. /home/biggus-kickus/code/esp32cam/esp-idf/export.sh'


# OPEN WEBSITES FROM TERMINAL

# Free Code Camp
alias freecodecamp="xdg-open https://www.freecodecamp.org/" # web

# Brilliant.org
alias brilliant="xdg-open https://brilliant.org" # web

# Paste to Markdown - paste html code to this page to generate the markdown equivalent
alias p2md="xdg-open https://euangoddard.github.io/clipboard2markdown/" # web

# Talk Python training & courses
alias talkpy="xdg-open https://training.talkpython.fm/account/" # web

# DataCrunch.io login page
alias datacrunch="xdg-open https://cloud.datacrunch.io/signin" # web

# Google App Engine
alias appengine="xdg-open https://cloud.google.com/appengine/" # web

# Gitlab
alias gitlab="xdg-open https://gitlab.com/users/sign_in" # web

# Full Stack Python Videos
alias fullstack="xdg-open https://www.fullstackpython.com/best-python-videos.html" # web

# Google Firebase
alias firebase="xdg-open https://console.firebase.google.com" # web

# END bash-magic