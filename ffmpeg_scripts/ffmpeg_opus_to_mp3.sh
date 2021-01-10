#!/bin/bash

# Note: this script is currently untested

echo Enter source directory (ex: /home/username/music/opus_songs)

read source_dir

echo Enter save directory (ex: /home/username/music/mp3_songs)

read save_dir

for f in "source_dir""/"*.opus; do mv "$f" "$save_dir"/"$f".ogg; done
