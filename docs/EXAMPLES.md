# A Few Examples

See [.bash_aliases](.bash_aliases) to view the full set of available aliases.

## Quick Find

If you can't remember an alias, but you do remember some part of its content, use `alsfind` to quickly print out matching lines from your `.bash_aliases`. For instance, if I can't remember which alias loads up Spacy in jupyter lab, I can quickly find all lines containing spacy (case insensitive) by typing:

```console
[user@domain]$ alsfind jupyter

```output
## Spacy
alias spacygo="cd /mnt/Egg/code/spacy && conda activate spacy && jupyter lab ."
```

### Update & Upgrade apt

```console
[user@domain]$ up
```

```output
...
Fetched 1,453 kB in 4s (358 kB/s)                                                                        
Reading package lists... Done
Building dependency tree       
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree       
Reading state information... Done
Calculating upgrade... Done
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
```

### Update pip, install setuptools

```console
[user@domain]$ pipup
```

```output
Collecting pip
  Using cached pip-21.0.1-py3-none-any.whl (1.5 MB)
Collecting setuptools
  Using cached setuptools-54.1.1-py3-none-any.whl (784 kB)
Installing collected packages: pip, setuptools
  Attempting uninstall: pip
    Found existing installation: pip 20.2.4
    Uninstalling pip-20.2.4:
      Successfully uninstalled pip-20.2.4
  Attempting uninstall: setuptools
    Found existing installation: setuptools 50.3.1.post20201107
    Uninstalling setuptools-50.3.1.post20201107:
      Successfully uninstalled setuptools-50.3.1.post20201107
Successfully installed pip-21.0.1 setuptools-54.1.1
```

### Edit ~/.bash_aliases

```console
[user@domain]$ alsmod # opens `~/.bash_aliases` in nano
```

### Search for aliases containing "Program X"

```console
[user@domain]$ alsfind "program x" # case insensitive, prints lines from `.bash_aliases` matching your search
```

```output
alias pgmx="program x command 1 && command2 && even_more_commands"

```