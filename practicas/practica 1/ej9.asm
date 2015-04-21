section .data
	msg: DB "hola mundo!", 10
	len: EQU $ - msg

global _start
section .text
	_start:
	mov rsi, 20

print:	mov rax, 4
		mov rbx, 1
		mov rcx, msg
		mov rdx, len

		int 0x80
		dec rsi
		jnz print

	mov rax, 1
	mov rbx, 0

	int 0x80