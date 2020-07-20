#!/bin/sh

gcc -Os -nostdlib _start.S mainCRTStartup.c   -o mainCRTStartup_c   -fno-exceptions  -fno-asynchronous-unwind-tables
g++ -Os -nostdlib _start.S mainCRTStartup.cpp -o mainCRTStartup_cpp -fno-exceptions  -fno-asynchronous-unwind-tables

# NOTE(furkan): Invoke strip to reduce the size of executable
strip -s -R.comment -R.note.gnu.build-id -R.gnu.hash -R.dynsym -R.dynstr -R.eh_frame --strip-unneeded mainCRTStartup_c
strip -s -R.comment -R.note.gnu.build-id -R.gnu.hash -R.dynsym -R.dynstr -R.eh_frame --strip-unneeded mainCRTStartup_cpp
