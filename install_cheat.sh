#!/bin/bash

gcc -Wall -fPIC -shared -o drobpoxcheat.so drobpoxcheat.c || exit 1
mkdir -p /usr/local/lib64
cp drobpoxcheat.so /usr/local/lib64/

