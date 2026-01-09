main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 1808
	jmp	.L2
	lea	rax, -10000[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -10000[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	test	eax, eax
	jne	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: