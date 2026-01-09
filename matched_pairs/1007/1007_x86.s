main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 1440
	lea	rdx, -432[rbp]
	mov	eax, 0
	mov	ecx, 50
	mov	rdi, rdx
	rep stosq
	lea	rdx, -16[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rcx, -5536[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 5536
	movzx	ecx, BYTE PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rbp
	add	rax, rsi
	sub	rax, 5536
	movzx	eax, BYTE PTR [rax]
	cmp	cl, al
	jle	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -432[rbp+rax*4], edx
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L7
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -432[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	cmp	edx, eax
	jle	.L11
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L12
	lea	rcx, -5536[rbp]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	DWORD PTR -432[rbp+rax*4], 10000000
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L13
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: