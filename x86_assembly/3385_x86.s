A:
a:
B:
b:
P:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r9, P[rip]
	lea	r8, b[rip]
	lea	rax, B[rip]
	mov	rcx, rax
	lea	rax, a[rip]
	mov	rdx, rax
	lea	rax, A[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR A[rip]
	mov	eax, DWORD PTR P[rip]
	cmp	edx, eax
	jg	.L2
	mov	edx, DWORD PTR B[rip]
	mov	eax, DWORD PTR P[rip]
	cmp	edx, eax
	jg	.L2
	mov	edx, DWORD PTR A[rip]
	mov	eax, DWORD PTR B[rip]
	add	edx, eax
	mov	eax, DWORD PTR P[rip]
	cmp	edx, eax
	jle	.L3
	mov	edx, DWORD PTR A[rip]
	mov	eax, DWORD PTR b[rip]
	cmp	edx, eax
	jle	.L3
	mov	edx, DWORD PTR B[rip]
	mov	eax, DWORD PTR a[rip]
	cmp	edx, eax
	jg	.L2
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L4
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	pop	rbp
	ret
0:
1:
2:
3:
4: