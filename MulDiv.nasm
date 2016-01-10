; Filename: MulDiv.nasm
; Author: N0N4M3


global _start


section .text

_start:
	; unsinged r/m8 mul
	mov eax, 0x0

	mov al, 0x10
	mov bl, 0x2
	mul bl

	mov al, 0xFF
	mul bl

	; unsinged r/m16 mul
	mov eax, 0x0
	mov ebx, 0x0

	mov ax, 0x1122
	mov bx, 0x0002
	mul bx

	mov ax, 0x1122
	mov bx, 0x1122
	mul bx

	; unsigned r/m32 mul

	mov eax, 0x11223344
	mov ebx, 0x00000002
	mul ebx

	mov eax, 0x11223344
	mov ebx, 0x55667788
	mul ebx

	; mul using memory location
	
	mul byte [var1]
	mul word [var2]
	mul dword [var3]

	; div using r/m16

	mov dx, 0x0
	mov ax, 0x7788
	mov cx, 0x2
	div cx

	mov ax, 0x7788 + 1
	mov cx, 0x2
	div cx

	; exit

	mov eax, 1
	mov ebx, 10
	int 0x80




section .data

	var1 db 0x05
	var2 dw 0x1122
	var3 dd 0x11223344

