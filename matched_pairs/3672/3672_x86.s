M:
T:
U:
F:
D:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -12[rbp], 0
	lea	r9, D[rip]
	lea	r8, F[rip]
	lea	rax, U[rip]
	mov	rcx, rax
	lea	rax, T[rip]
	mov	rdx, rax
	lea	rax, M[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -13[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR M[rip]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L9
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	movzx	eax, BYTE PTR -13[rbp]
	cmp	al, 117
	je	.L5
	movzx	eax, BYTE PTR -13[rbp]
	cmp	al, 100
	jne	.L6
	mov	edx, DWORD PTR U[rip]
	mov	eax, DWORD PTR D[rip]
	add	eax, edx
	add	DWORD PTR -12[rbp], eax
	jmp	.L4
	movzx	eax, BYTE PTR -13[rbp]
	cmp	al, 102
	jne	.L4
	mov	eax, DWORD PTR F[rip]
	add	eax, eax
	add	DWORD PTR -12[rbp], eax
	jmp	.L4
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR T[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L7
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
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