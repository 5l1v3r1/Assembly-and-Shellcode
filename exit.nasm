; Filename: exit.nasm
; Author: Anuwat

global _start

section .text

_start:

	mov eax, 0x1
	mov ebx, 0xa
	int 0x80
