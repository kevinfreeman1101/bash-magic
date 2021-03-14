# About this Repository

Thinking about the programmer's mantra "Don't Repeat Yourself" convinced me to start making bash aliases for as many repetetive tasks as possible.

These aliases have performed nicely in Ubuntu 18, Ubuntu 20, and Zorin 15. These instructions were were written with those systems in mind; please use caution and read these instructions entirely before making any changes to your system files.

## Why Use bash-magic?

bash-magic reduces keystrokes for tasks that would otherwise take precious seconds (or even decaseconds!) to accomplish. This repo is currently geared toward reducing time spent on my own tasks, but will expand to reduce command sets for many stack layers as development time allows.

bash-magic currently features one or more time-saving aliases for common tasks in:

| bash                  | django                  | docker         |
|-----------------------|-------------------------|----------------|
| docker-machine        | esp-32 projects         | kubernetes     |
| micropython           | python3                 | conda/anaconda |
| raspberry pi projects | python .net development | more to come   |

For example, I used to type this before getting to work on my website:

```console
cd /home/<some-old-user-name>/code/kfdev
git checkout kfdev_env
conda activate kfdev_env
clear
ls -lah
```

Now, I just type:

```console
kfdev
```

Compounded over many sessions, this is likely to add up to quite a lot of time!

## !! Warning !!

bash-magic should be appended to your system's `.bash_aliases` or `~/.bashrc` file (one or the other; not both!). If these files already exist in your home directory, make backup copies before proceeding further. Do not overwrite existing content in those preexisting files unless you are certain of outcomes or willing to risk boot failure.

## Requirements

1. Bash
1. Preference for minimizing keystrokes wherever possible

## Installation

### Ubuntu-based (Debian) Operating Systems

Clone this repo to your local environment with:

```console
[user@domain]$ git clone https://github.com/kevinfreeman1101/bash-magic.git
```

If `~/.bash_aliases` already exists in your home directory, append bash-magic aliases to the existing file; otherwise create it:

```console
[user@domain]$ cat bash-magic/.bash_aliases >> ~/.bash_aliases
```

#### Reload Your Terminal

```console
[user@domain]$ source ~/.bashrc
```

...from this point onward, bash-magic enables reload using this command:

```console
[user@domain]$ src
```

### Windows

Windows users can utilize bash-magic via the Windows Subsystem for Linux ([WSL/WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10)) using Ubuntu and similar Debian-based distros. Functionality has not been tested in those environments.

### MacOS

Functionality has not been tested for MacOS, but this should do the trick. 

If `~/.bashrc` already exists in your home directory, append bash-magic aliases to the existing file; otherwise create it:

```console
[user@domain]$ cat bash-magic/.bash_aliases >> ~/.bashrc
```