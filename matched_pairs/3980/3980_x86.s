main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	mov	ecx, DWORD PTR -8[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -8[rbp]
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	setne	al
	test	al, al
	jne	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: