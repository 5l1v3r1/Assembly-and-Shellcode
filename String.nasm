; Filename: String.nasm
; Author: Anuwat

global _start

section .text

_start:

	; copy string from source to destination
	
	mov ecx, sourceLen
	lea esi, [source]
	lea edi, [destination]

	cld ; clear DF Flag
	rep movsb

	; print hello world using write sys_call

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, destination
	mov edx, sourceLen
		
	int 0x80

	; mov eax, 0x1
	; int 0x80

	; string comparison with cmpsb
	; compare source and destination

	mov ecx, sourceLen
	lea esi, [source]
	lea edi, [destination]
	repe cmpsb

	jz SetEqual
	
	mov ecx, result2
	mov edx, result2Len
	jmp Print

SetEqual:

	mov ecx, result1
	mov edx, result1Len



Print:

	mov eax, 0x4
	mov ebx, 0x1
	int 0x80

	mov eax, 0x1
	mov ebx, 0xa
	int 0x80



section .data
	
	source: db "Hello Wordl!", 0xA
	sourceLen equ $-source

	comparison: db "Hello" 

	result1: db "String are Equal", 0xA
	result1Len equ $-result1

	result2: db "String are not Equal", 0xA
	result2Len equ $-result2


section .bss

	destination: resb 100
