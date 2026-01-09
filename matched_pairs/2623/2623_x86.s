median:
N:
ADJUST:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, median[rip]
	mov	DWORD PTR [rcx+rdx], eax
	sal	DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L6
	jmp	.L5
	nop
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, median[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR N[rip]
	and	eax, 1
	test	eax, eax
	jne	.L9
	mov	eax, DWORD PTR N[rip]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR N[rip]
	add	eax, 1
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, median[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L12
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -4[rbp], eax
	jmp	.L13
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ADJUST
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L14
	mov	eax, DWORD PTR N[rip]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L15
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR median[rip+4]
	mov	eax, DWORD PTR -20[rbp]
	cmp	edx, eax
	jle	.L16
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR median[rip+4], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	mov	edi, 1
	call	ADJUST
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L17
	mov	eax, DWORD PTR median[rip+4]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR N[rip]
	and	eax, 1
	test	eax, eax
	jne	.L18
	mov	edx, DWORD PTR median[rip+8]
	mov	eax, DWORD PTR median[rip+12]
	cmp	edx, eax
	jle	.L19
	mov	eax, DWORD PTR median[rip+8]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L18
	mov	eax, DWORD PTR median[rip+12]
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	addsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: