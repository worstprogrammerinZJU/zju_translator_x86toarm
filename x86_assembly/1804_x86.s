x:
z:
reverse:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	DWORD PTR reverse[rip], 0
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	mov	esi, eax
	mov	edi, 0
	call	mergesort
	mov	edx, DWORD PTR reverse[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L5
	mov	eax, 0
	leave
	ret
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jg	.L9
	mov	edx, DWORD PTR -4[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -12[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
	jmp	.L8
	mov	edx, DWORD PTR -8[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -12[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR reverse[rip]
	add	eax, edx
	mov	DWORD PTR reverse[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jg	.L12
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L11
	jmp	.L12
	mov	edx, DWORD PTR -4[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -12[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L13
	jmp	.L14
	mov	edx, DWORD PTR -8[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -12[rbp], ecx
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L15
	mov	DWORD PTR -4[rbp], 0
	jmp	.L16
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, z[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, x[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L17
	nop
	nop
	pop	rbp
	ret
mergesort:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L20
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	mergesort
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, edx
	call	mergesort
	mov	edx, DWORD PTR -24[rbp]
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	merge
	nop
	leave
	ret
0:
1:
2:
3:
4: