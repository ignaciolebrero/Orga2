;a)
	section .data
		msg: DB "hola mundo!", 10
		len: EQU $ - msg

	global _start
	section .text
		_start:
		mov rax, 4   ;funcion syswrite
		mov rbx, 1 	 ;en stdout
		mov rcx, msg ;desde la direccion de msg
		mov rdx, len ;hasta el len de msg

 		int 0x80	 ;syscall con lo hecho arriba

		mov rax, 1	 ;funcion exit
		mov rbx, 0   ;paramentro 0 = "sin errores"

		int 0x80     ;fin de programa

;b) Las secciones son: 
;	.data:   variables globales ya inicializadas, pseudoinstrucciones: RESB, RESW, RESD, RESQ
;	.rodata: constantes globales, pseudoinstrucciones: DB, DW, DD, DQ
;	.bss:    variables globales NO inicializadas, pseudoinstrucciones: RESB, RESW, RESD, RESQ
;	.text:   donde escribo el codigo

;c)las pseudoinstrucciones son para el lenguaje ensamblador, esta le dicen si debe definir alguno en memoria