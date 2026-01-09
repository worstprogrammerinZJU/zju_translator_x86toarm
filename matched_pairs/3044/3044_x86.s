main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -397312[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2784
	lea	rax, -400064[rbp]
	mov	edx, 400040
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	QWORD PTR -16[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	lea	rdx, -400080[rbp]
	lea	rax, -400072[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	QWORD PTR -8[rbp], 0
	jmp	.L2
	lea	rdx, -400096[rbp]
	lea	rax, -400088[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L3
	sub	QWORD PTR -16[rbp], 1
	add	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -400064[rbp+rax*8]
	mov	rax, QWORD PTR -400096[rbp]
	cmp	rdx, rax
	jg	.L4
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -400064[rbp+rax*8]
	mov	rax, QWORD PTR -400096[rbp]
	cmp	rdx, rax
	jge	.L5
	add	QWORD PTR -16[rbp], 1
	mov	rdx, QWORD PTR -400096[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -400064[rbp+rax*8], rdx
	add	QWORD PTR -8[rbp], 1
	mov	rax, QWORD PTR -400072[rbp]
	cmp	QWORD PTR -8[rbp], rax
	jl	.L6
	mov	QWORD PTR -400096[rbp], 0
	jmp	.L7
	sub	QWORD PTR -16[rbp], 1
	add	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -400064[rbp+rax*8]
	mov	rax, QWORD PTR -400096[rbp]
	cmp	rdx, rax
	jle	.L8
	cmp	QWORD PTR -16[rbp], -1
	jne	.L9
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: