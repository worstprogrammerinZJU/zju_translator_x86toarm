N:
question:
sum:
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
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rcx, -16[rbp]
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR sum[rip]
	add	eax, 10
	mov	DWORD PTR sum[rip], eax
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, question[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR sum[rip]
	add	eax, edx
	mov	DWORD PTR sum[rip], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	lea	rcx, 0[0+rdx*4]
	lea	rdx, question[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	lea	ecx, 1[rdx]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, question[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, 1
	jne	.L5
	mov	eax, DWORD PTR sum[rip]
	add	eax, 40
	mov	DWORD PTR sum[rip], eax
	jmp	.L4
	mov	eax, DWORD PTR sum[rip]
	add	eax, 20
	mov	DWORD PTR sum[rip], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR sum[rip]
	mov	esi, eax
	lea	rax, .LC0[rip]
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