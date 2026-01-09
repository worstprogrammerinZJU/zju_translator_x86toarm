num:
K:
key:
queue:
rear:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -16[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR K[rip+4], 0
	jmp	.L3
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 4000
	lea	rcx, queue[rip]
	lea	rdi, [rdx+rcx]
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 2
	mov	rsi, rax
	call	qsort@PLT
	mov	ecx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 4000
	lea	rdx, queue[rip]
	movzx	eax, WORD PTR [rax+rdx]
	cwde
	add	eax, ecx
	mov	DWORD PTR K[rip+4], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	mov	WORD PTR [rdx+rax], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L6
	mov	DWORD PTR num[rip], 1
	mov	eax, DWORD PTR K[rip+4]
	mov	DWORD PTR key[rip], eax
	mov	WORD PTR rear[rip], 1
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	HEAP
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L7
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
	mov	WORD PTR -6[rbp], ax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, eax
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L11
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
	jle	.L11
	add	DWORD PTR -4[rbp], 1
	movsx	edx, WORD PTR -6[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, K[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L15
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
	jle	.L14
	jmp	.L13
	nop
	mov	eax, DWORD PTR -4[rbp]
	sar	eax
	mov	edx, eax
	movsx	eax, WORD PTR -6[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
HEAP:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	eax, DWORD PTR K[rip+4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L17
	mov	DWORD PTR -8[rbp], 0
	jmp	.L18
	mov	edx, DWORD PTR K[rip+4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	je	.L29
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR num[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L21
	jmp	.L20
	nop
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 204
	lea	rdx, rear[rip]
	movzx	eax, WORD PTR [rax+rdx]
	cwde
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	jmp	.L22
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR -16[rbp]
	mov	ecx, edx
	cdqe
	imul	rax, rax, 204
	lea	rdx, rear[rip]
	mov	WORD PTR [rax+rdx], cx
	mov	DWORD PTR -12[rbp], 1
	jmp	.L23
	mov	edx, DWORD PTR num[rip]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rcx
	lea	rcx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rcx+rax]
	mov	ecx, DWORD PTR -12[rbp]
	movsx	rcx, ecx
	movsx	rdx, edx
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, [rdx+rdx]
	lea	rdx, rear[rip]
	mov	WORD PTR [rcx+rdx], ax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L24
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, [rdx+rdx]
	lea	rdx, rear[rip]
	movzx	edx, WORD PTR [rcx+rdx]
	add	edx, 1
	mov	edi, edx
	mov	edx, DWORD PTR -16[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, [rdx+rdx]
	lea	rdx, rear[rip]
	mov	WORD PTR [rcx+rdx], di
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	lea	ecx, [rsi+rax]
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	sub	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	movsx	edx, ax
	mov	eax, DWORD PTR num[rip]
	sub	ecx, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR num[rip]
	add	eax, 1
	mov	DWORD PTR num[rip], eax
	mov	eax, DWORD PTR num[rip]
	sub	eax, 1
	mov	edx, DWORD PTR num[rip]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, K[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jle	.L25
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	add	eax, 1
	mov	esi, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	mov	WORD PTR [rdx+rax], si
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	add	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, rear[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	sub	eax, 1
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 2000
	add	rax, rdx
	lea	rdx, [rax+rax]
	lea	rax, queue[rip]
	movzx	eax, WORD PTR [rdx+rax]
	cwde
	sub	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, key[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR K[rip+4], eax
	mov	eax, DWORD PTR num[rip]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -8[rbp], eax
	jmp	.L26
	mov	edx, DWORD PTR num[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ADJUST
	sub	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 0
	jg	.L27
	mov	eax, DWORD PTR K[rip+4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 1
	jg	.L28
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR -2[rbp], ax
	mov	rax, QWORD PTR -32[rbp]
	movzx	eax, WORD PTR [rax]
	mov	WORD PTR -4[rbp], ax
	movzx	eax, WORD PTR -2[rbp]
	cmp	ax, WORD PTR -4[rbp]
	jge	.L31
	mov	eax, -1
	jmp	.L32
	movzx	eax, WORD PTR -2[rbp]
	cmp	ax, WORD PTR -4[rbp]
	jle	.L33
	mov	eax, 1
	jmp	.L32
	mov	eax, 0
	pop	rbp
	ret
0:
1:
2:
3:
4: