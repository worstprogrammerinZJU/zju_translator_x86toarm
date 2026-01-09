main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4032
	mov	DWORD PTR -12[rbp], 0
	lea	rax, -4020[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], 10001
	lea	rax, -4024[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4016[rbp+rax*4]
	mov	eax, DWORD PTR -4024[rbp]
	cmp	edx, eax
	jl	.L4
	mov	edx, DWORD PTR -4024[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -4016[rbp+rax*4], edx
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L5
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4020[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
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