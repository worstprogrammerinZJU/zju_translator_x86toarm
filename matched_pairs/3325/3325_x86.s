n:
min:
max:
sum:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	DWORD PTR min[rip], 1001
	mov	DWORD PTR max[rip], -1
	mov	DWORD PTR sum[rip], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR sum[rip]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR max[rip]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR max[rip], eax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR min[rip]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR min[rip], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR sum[rip]
	mov	edx, DWORD PTR min[rip]
	sub	eax, edx
	mov	edx, DWORD PTR max[rip]
	sub	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR sum[rip]
	mov	edx, DWORD PTR n[rip]
	lea	ecx, -2[rdx]
	cdq
	idiv	ecx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR sum[rip]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: