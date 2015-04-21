global suma

section .text		;inicio de codigo ejecutable
	
suma:			
	;armando el STACK FRAME(super util)
		push RBP
		mov  RBP, RSP
		push RBX
		push R12
		push R13
		push R14
		push R15

	;MI CODIGO
		mov RAX, RDI	;asigno el primer valor a rax
		add RAX, RSI	;le sumo el 2do valor

	;desarmo el STACK FRAME(mas util todavia)
		pop R15
		pop R14
		pop R13
		pop R12
		pop RBX
		pop RBP
		ret