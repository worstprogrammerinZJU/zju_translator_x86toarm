K:
argu:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	mov	DWORD PTR -4[rbp], 0
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, argu[rip]
	add	rax, rdx
	lea	rdx, 4[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, argu[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, 1
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -112[rbp]
	lea	rdx, .LC2[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 12
	mov	rsi, rax
	lea	rax, argu[rip]
	mov	rdi, rax
	call	qsort@PLT
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	HEAP
	mov	eax, 0
	leave
	ret
ADJUST:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -4[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L7
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L11
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	sal	DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L10
	jmp	.L9
	nop
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, K[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
HEAP:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	jmp	.L13
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ADJUST
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L14
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L15
	mov	DWORD PTR -8[rbp], 0
	jmp	.L16
	mov	ecx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+4]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	imul	eax, esi
	cmp	ecx, eax
	je	.L21
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L19
	jmp	.L18
	nop
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	ecx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR K[rip+4], eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, argu[rip+8]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	mov	edi, 1
	call	ADJUST
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L20
	nop
	nop
	leave
	ret
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR -12[rbp], rdx
	mov	eax, DWORD PTR 8[rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rdx
	mov	eax, DWORD PTR 8[rax]
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jge	.L23
	mov	eax, -1
	jmp	.L26
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jle	.L25
	mov	eax, 1
	jmp	.L26
	mov	eax, 0
	pop	rbp
	ret
0:
1:
2:
3:
4: