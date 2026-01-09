main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 864
	lea	rdx, -4944[rbp]
	mov	eax, 0
	mov	ecx, 614
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -4944[rbp], 2
	mov	DWORD PTR -4940[rbp], 3
	mov	DWORD PTR -12[rbp], 2
	mov	DWORD PTR -4[rbp], 5
	jmp	.L2
	mov	DWORD PTR -8[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	ecx, DWORD PTR -4944[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L22
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L6
	jmp	.L5
	nop
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jne	.L7
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -12[rbp], edx
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -4944[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 2
	cmp	DWORD PTR -4[rbp], 9999
	jle	.L8
	lea	rax, -4948[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L9
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -4944[rbp+rax*4]
	add	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L11
	jmp	.L12
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	mov	eax, DWORD PTR -4944[rbp+rax*4]
	sub	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jg	.L13
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L15
	add	DWORD PTR -16[rbp], 1
	jmp	.L15
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -4944[rbp+rax*4]
	add	DWORD PTR -12[rbp], eax
	jmp	.L16
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	mov	eax, DWORD PTR -4944[rbp+rax*4]
	sub	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jg	.L17
	mov	eax, DWORD PTR -4948[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L18
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -4944[rbp+rax*4]
	mov	eax, DWORD PTR -4948[rbp]
	cmp	edx, eax
	jle	.L19
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -4948[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4948[rbp]
	test	eax, eax
	jne	.L20
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: