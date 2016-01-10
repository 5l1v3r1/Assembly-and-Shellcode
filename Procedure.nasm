; Filename: Procedure.nasm
; Author: N0N4M3

global _start

section .text

HelloWorldProc:

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80

	ret

_start:

	mov ecx, 0xa

PrintHelloWorld:
	
	push ecx
	call HelloWorldProc
	pop ecx
	loop PrintHelloWorld

	mov eax, 0x1
	mov ebx, 0xa
	int 0x80





section .data

	message	db "Hello World!"
	mlen	equ $-message


