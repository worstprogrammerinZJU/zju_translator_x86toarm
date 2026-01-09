breed:
n:
k:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -8[rbp], 1
	lea	rax, k[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, breed[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L3
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, breed[rip]
	mov	DWORD PTR [rdx+rax], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L3
	mov	DWORD PTR -12[rbp], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cdqe
	sal	rax, 2
	add	rax, 1
	mov	rdx, rax
	mov	esi, 0
	lea	rax, breed[rip]
	mov	rdi, rax
	call	memset@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
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