#!/usr/bin/env bash

# store the current dir
CUR_DIR=$(pwd)

# Let the person running the script know what's going on.
echo "\n\033[1mDownloading in latest boxes for all repositories...\033[0m\n"

# Find all git repositories and update it to the master latest revision
for i in $(find . -name ".vagrant" | cut -c 3-); do
    echo "";
    echo "\033[33m"+$i+"\033[0m";

    # We have to go to the .box parent directory to call the pull command
    cd "$i";
    cd ..;

    # finally pull
    vagrant box update;

    # lets get back to the CUR_DIR
    cd $CUR_DIR
done

echo "\n\033[32mComplete!\033[0m\n"
