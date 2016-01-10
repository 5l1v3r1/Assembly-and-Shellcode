#!/bin/bash

echo "[+] ASM Compiling...."
nasm -f elf32 -o $1.o $1.nasm

echo "[+] Linking......"
ld -o $1 $1.o

echo "[+] Done!"
