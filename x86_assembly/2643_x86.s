n:
vote:
name:
party:
input:
check:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, name[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, input[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L4
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, -1
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, name[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, party[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	lea	rax, input[rip]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	eax, 0
	call	check
	mov	DWORD PTR -8[rbp], eax
	cmp	DWORD PTR -8[rbp], -1
	je	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L13
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 1
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, vote[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jne	.L14
	mov	DWORD PTR -12[rbp], 0
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L15
	cmp	DWORD PTR -12[rbp], 0
	jne	.L16
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L17
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, party[rip]
	add	rax, rdx
	mov	rsi, rax
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