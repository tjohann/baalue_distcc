#!/usr/bin/env bash

export DISTCC_VERBOSE=1
export DISTCC_POTENTIAL_HOSTS='build-server'

distcc /opt/a20_sdk/toolchain/bin/arm-none-linux-gnueabihf-gcc -c hello_distcc.c -o hello_distcc.o
/opt/a20_sdk/toolchain/bin/arm-none-linux-gnueabihf-gcc hello_distcc.o -o hello_distcc
