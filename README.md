# About this Repository

The programmer's mantra "Don't Repeat Yourself" inspired this repo which is currently filled with quick scripts I use to reduce keystrokes in my Bash terminal.

Requirements: Intended for use with Ubuntu-based systems

Instructions: copy this .bashrc file into your home directory and type `source ~/.bashrc`, then hit `RETURN`/`ENTER`

Bash-magic adds wings to my workflow. For example, here is what I used to have to type just to get to work in my kf_dev environment:

```
cd /home/<my-user-name>/code/kfdev
conda activate kfdev_env
clear
ls -lah
```

And this is for a fairly basic operation! To save time, use I made bash aliases for this and similar operations that help me get to work more quickly and accomplish larger sets of steps with fewer keystrokes. Now, I only have to type `kfdev` and get to work. This saves considerable time over the course of daily work, and helps me switch between environments without having to stop and think about directory paths or evnrionment names.

Users who prefer graphical environments may also benefit from Bash aliases with sets of commands that open up many programs at once.

To utilize these aliases, replace the sample filepaths shown with ones that match the paths on your system(s) and modify as desired to match your own sets of commands. 

To see what a command does, type `alsfind <command>` from the terminal. This prints out matching lines from `~.bash_aliases`. 

 If you're using this repo's `~/.bash_aliases` file, type `alsmod` + `RETURN` to open `~/.bash_aliases` for editing in nano. When the editor opens, append:

```
alias kfdev="cd /home/<my-user-name>/code/kfdev && conda activate kfdev_env && clear && ls -lah"
```

After saving this change, exit to terminal and source your shell with `src` (an alias for `source ~/.bashrc`). Now, you can type `kfdev` to accomplish all 4 commands.

## A Few Examples

See the .bash_aliases file in this repo to view the full set of aliases and associated Bash commands.

### Update apt
`up`

### Update pip
`pipup`

### Open ~/.bash_aliases to Edit With nano.
`alsmod`

### Print Lines Containing 'srv' in ~/.bash_aliases (lists all server connections; cap insensitive)
`alsfind srv`

