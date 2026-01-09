n:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	jmp	.L2
	mov	eax, DWORD PTR n[rip]
	sar	eax
	mov	DWORD PTR n[rip], eax
	mov	eax, DWORD PTR n[rip]
	and	eax, 1
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 1
	jne	.L5
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L2
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L3
	mov	eax, 0
	pop	rbp
	ret
0:
1:
2:
3:
4: