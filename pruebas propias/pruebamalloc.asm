extern malloc

global mall

section .text
	mall:	
		mov rdi, 5
		call malloc

	mall2:
		mov rax, 1
		mov rbx, 0

		int 0x80