; Hello-Shell.nasm
; Author : N0N4M3



global _start

section .text

_start:
	jmp short call_shellcode

shellcode:
	
	;print hello world on the screen
	xor eax, eax
	mov al, 0x4
	
	xor ebx, ebx
	mov bl, 0x1
	
	pop ecx
	
	xor edx, edx
	mov dl, 0xD
	int 0x80

	;exit the program
	xor eax, eax
	mov al, 0x1
	xor ebx, ebx
	int 0x80

call_shellcode:
	call shellcode
	message: db "Hello World!",0xA
	
