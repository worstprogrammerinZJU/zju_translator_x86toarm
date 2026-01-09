n:
k:
m:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	DWORD PTR -4[rbp], 2
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	edx, DWORD PTR k[rip]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	edx, DWORD PTR m[rip]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	ecx, DWORD PTR n[rip]
	cdq
	idiv	ecx
	mov	eax, edx
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, m[rip]
	mov	rcx, rax
	lea	rax, k[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR k[rip]
	test	eax, eax
	jne	.L5
	mov	eax, DWORD PTR m[rip]
	test	eax, eax
	je	.L6
	mov	eax, 1
	jmp	.L7
	mov	eax, 0
	test	al, al
	jne	.L8
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: