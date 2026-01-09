N:
cow:
Group:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	lea	rax, cow[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Group[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Group[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR cow[rip]
	cmp	eax, 2
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Group[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Group[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L4
	mov	eax, DWORD PTR N[rip]
	mov	edx, DWORD PTR N[rip]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Group[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR N[rip]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Group[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Group[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, edx
	mov	esi, eax
	mov	eax, ecx
	sub	eax, esi
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L6
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L7
	mov	eax, DWORD PTR -8[rbp]
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