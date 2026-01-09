N:
K:
s:
t:
r:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, K[rip]
	mov	rdx, rax
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, r[rip]
	mov	rcx, rax
	lea	rax, t[rip]
	mov	rdx, rax
	lea	rax, s[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR N[rip]
	mov	ecx, DWORD PTR s[rip]
	mov	edx, DWORD PTR t[rip]
	mov	esi, edx
	imul	esi, ecx
	cdq
	idiv	esi
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR t[rip]
	mov	eax, DWORD PTR r[rip]
	add	edx, eax
	mov	eax, DWORD PTR -8[rbp]
	imul	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR N[rip]
	mov	ecx, DWORD PTR s[rip]
	mov	edx, DWORD PTR t[rip]
	imul	ecx, edx
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR r[rip]
	sub	DWORD PTR -8[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR N[rip]
	mov	ecx, DWORD PTR s[rip]
	mov	edx, DWORD PTR t[rip]
	imul	ecx, edx
	cdq
	idiv	ecx
	mov	eax, edx
	sub	eax, 1
	mov	edi, DWORD PTR s[rip]
	cdq
	idiv	edi
	add	eax, 1
	add	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR K[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: