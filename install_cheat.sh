#!/bin/bash

gcc -Wall -fPIC -shared -o dropboxcheat.so dropboxcheat.c || exit 1
mkdir -p /usr/local/lib64
cp -f dropboxcheat.so /usr/local/lib64/

mkdir -p ~/bin
cp -f `pwd`/dropbox_daemon ~/bin/

export_count=`cat ~/.bash_profile | grep 'export PATH="$HOME/bin:$PATH"' | wc -l`
echo $export_count

if [ $export_count -eq 0 ]; then
        echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bash_profile
fi

echo "installed."
echo "execute to complete installation:"
echo "source ~/.bash_profile"

