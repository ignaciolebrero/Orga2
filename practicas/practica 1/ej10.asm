global _start
section .text
	_start:
		mov rax, 4
		inc rax
		dec rax
		add rax, 1
		sub rax, 1

	fin:
		mov rax, 1
		mov rbx, 0
		int 0x80 