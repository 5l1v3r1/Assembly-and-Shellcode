; Filename: Procedure2.nasm
; Author: N0N4M3

global _start

section .text

HelloWorldProc:
	
	push ebp

	mov ebp, esp
	
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80

	; mov esp, ebp
	; pop ebp
	
	leave
	ret

_start:

	mov ecx, 0xa

PrintHelloWorld:
	
	pushad
	pushfd
	
	call HelloWorldProc
	
	popfd
	popad

	loop PrintHelloWorld

	mov eax, 0x1
	mov ebx, 0xa
	int 0x80





section .data

	message	db "Hello World!"
	mlen	equ $-message


