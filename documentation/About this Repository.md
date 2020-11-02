# About this Repository

There is a stage near the end of nearly every product's lifecycle when some favorite old device has finally outlived its intended usefulness. For electronics hobbyists, hackers, and the insatiably curious, this stage is not really the end, but may instead mark the birth of a whole new universe, filled to bursting with new creative potential. Finally, we may pull back the magical curtain, revealing unknown scores of some distant wizard's carefully hidden secrets.

Each new foray into such pursuits has helped me to realize that most complex designs are just clever new implementations of the same old basic parts, arranged in some new way to produce a better result than the previous generation of things. Even if my efforts result in complete failure, I have gained a bit more knowledge and found one more method to avoid on my next attempt. In this sense, failure is actually one of the most productive possible outcomes.

Computer programs often follow the same trend. Large, complex programs are frequently made by combining smaller, simpler functions in configurations that may produce an end result which is surprisingly complex, but are still fairly simple to understand after breaking a few of them open to see how everything works together inside.

The programmer's mantra "Don't Repeat Yourself" often springs to the front of my mind when I find myself repeatedly typing the same long sets of commands at my bash terminal. Despite the fact that these seemingly-long commands are actually huge shortcuts in terms of the amount of work they can quickly accomplish, I still wonder how much additional time could be reclaimed over the next few decades if I shorten the number of characters entered per action even further.

And so, this repository was born.

Bash-magic, quite simply, is intended to add wings to your workflow. For example, here is what I would normally type when I want to get working on my local machine:

```
cd /home/<my-user-name>/code/kfdev
conda activate kfdev_env
clear
ls -lah
```

And this is for a fairly basic operation! Rather than wasting away from old age while typing things like this over and over again each day, I'll just pop into my ~/.bash_aliases file and add this line:

```
alias kfdev="cd /home/<my-user-name>/code/kfdev && conda activate kfdev_env && clear && ls -lah
```

After saving this change and returning to the terminal, I'll reload my shell environment with `src` (another alias for `source ~/.bashrc`), then simply type `kfdev` to accomplish all of those same things when I'm ready to go to work.

This small example has resulted in significantly fewer keystrokes to accomplish the same work; but the tiny thrill I get each time I save myself another 10-30 seconds of typing also means that I get to begin each new work session feeling like a semi-respectable hacker, and the feeling continues to grow as my repertoire expands.

Try it for yourself! Change the folder addresses and command names to suit your own purposes; and don't hesitate add your own new ones whenever you start to type something that could be further reduced.

Generally speaking, bash-magic's .bash_aliases file is commented, and should be fairly self-explanatory. If you find that it isn't, let me know where you got stuck, and I'll do my best to improve it.

If you're just getting started, here are a few highlights (open the .bash_aliases file to see them all):

### Updates for apt, pip, and conda

`up` # updates/upgrades apt
`condup` # updates conda
`pipup` # updates python3-pip

### Modify Your ~/.bash_aliases File

`alsmod`

### Modify Your ~/.bashrc File

`bashmod`

### Search for Lines Containing 'srv' in ~/.bash_aliases (lists all server connections; cap insensitive)

`alsfind srv`

### Search for Lines Containing `srv` in Any File

`cat <filename> | grep -i srv`

### Jump to Work Dir, Activate Environment, List Folder Contents, and Open an Interesting Tutorial Video in Firefox

`tweetme`

