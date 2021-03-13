# About this Repository

The programmer's mantra "Don't Repeat Yourself" inspired this repo which is currently filled with quick scripts I use to reduce keystrokes in my Bash terminal.

without issue, but has only been tested in Ubuntu 18, Ubuntu 20, and Zorin 15

## Requirements

1. Bash
1. Preference for minimizing keystrokes wherever possible

## Optional

1. Dark sunglasses

## Before You Install

bash-magic works well for me when using Ubuntu 18 & 20, Zorin, and similar (Debian-based) distros. It should work without issue in many non-Debian flavors, but it's possible that your shell looks elsewhere for its aliases. If you're not sure where to copy/append this repo's `~/.bash_aliases`, try appending to your `~/.bashrc` file and reloading bash a second time.

Quickly test whether bash-magic is working by telling bash to update+upgrade your apt package manager.

```console
[user@domain]$ up
```

## Instructions

If you already have a `~/.bash_aliases` file, you can add bash-magic to it with

```console
[user@domain]$ cat .bash_aliases >> ~/.bash_aliases
```

## 1. Clone bash-magic

```console
[user@domain]$ git clone https://github.com/kevinfreeman1101/bash-magic.git
```

## 2. Copy `.bash_aliases` to Your Home Directory

```console
[user@domain]$ cp bash-magic/.bash_aliases ~
```

## 3. Reload Your Terminal

```console
[user@domain]$ source ~/.bashrc
```

...from this point onward, you can accomplish the same task with:

```console
[user@domain]$ src
```

## Why Use bash-magic?

bash-magic reduces keystrokes for all sorts of taks that normally take precious seconds (or even decaseconds!) to hammer out. This is currently geared toward my own common tasks, but will be expanded to include others as dev time allows.

bash-magic includes aliases that reduce command sets for common operations in:

| bash                  | django                  | docker         |
|-----------------------|-------------------------|----------------|
| docker-machine        | esp-32 projects         | kubernetes     |
| micropython           | python3                 | conda/anaconda |
| raspberry pi projects | python .net development | more to come   |

For example, I used to type this before getting ot work on my website:

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

## Quick Find

If you can't remember an alias, but you do remember some part of its content, use `alsfind` to quickly print out matching lines from your `.bash_aliases`. For instance, if I can't remember which alias loads up Spacy in jupyter lab, I can quickly find all lines containing spacy (case insensitive) by typing:

```console
[user@domain]$ alsfind jupyter

```output
## Spacy
alias spacygo="cd /mnt/Egg/code/spacy && conda activate spacy && jupyter lab ."
```

