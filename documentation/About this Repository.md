# About this Repository

The programmer's mantra "Don't Repeat Yourself" inspired this repo which is currently filled with quick scripts I use to reduce keystrokes in my bash terminal.

Requirements: Intended for use with Ubuntu-based systems

Instructions: copy this .bashrc file into your home directory and type `source ~/.bashrc`, then hit `RETURN`/`ENTER`

Bash-magic adds wings to my workflow. For example, here is what I used to have to type just to get to work in my kf_dev environment:

```
cd /home/<my-user-name>/code/kfdev
conda activate kfdev_env
clear
ls -lah
```

And this is for a fairly basic operation! If you're using this repo's `~/.bash_aliases` file, type `alsmod` + `RETURN` to open `~/.bash_aliases` for editing in nano. When the editor opens, append:

```
alias kfdev="cd /home/<my-user-name>/code/kfdev && conda activate kfdev_env && clear && ls -lah"
```

After saving this change, exit to terminal and source your shell with `src` (an alias for `source ~/.bashrc`). Now, you can type `kfdev` to accomplish all 4 commands.

A few commands to illustrate the usefulness of these `.bash_aliases`:

### Updates for apt, pip, and conda
`# replaces ```sudo apt update && sudo apt upgrade -y``` `
`up`

`# replaces ```pip install --upgrade pip``` `
`pipup` # updates python3-pip

### Modify Your ~/.bash_aliases File
`# replaces ```nano ~/.bash_aliases``` `
`alsmod`

### Search for Lines Containing 'srv' in ~/.bash_aliases (lists all server connections; cap insensitive)
`# replaces ```cat ~/.bash_aliases | grep search_term``` `
`alsfind search_term`

