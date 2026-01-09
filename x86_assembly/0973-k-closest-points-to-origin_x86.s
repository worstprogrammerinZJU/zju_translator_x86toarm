distance:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, edx
	imul	ecx, eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, edx
	add	eax, ecx
	mov	edi, eax
	mov	eax, 0
	call	sqrt@PLT
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, eax
	movq	rax, xmm0
	movq	xmm0, rax
	leave
	ret
compare:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, QWORD PTR [rax]
	call	distance
	movq	rax, xmm0
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, QWORD PTR [rax]
	call	distance
	movq	rax, xmm0
	mov	QWORD PTR -32[rbp], rax
	movsd	xmm0, QWORD PTR -32[rbp]
	comisd	xmm0, QWORD PTR -24[rbp]
	jbe	.L11
	mov	eax, -1
	jmp	.L6
	movsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR -32[rbp]
	jbe	.L12
	mov	eax, 1
	jmp	.L6
	mov	eax, 0
	leave
	ret
kClosest:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	DWORD PTR -48[rbp], ecx
	mov	QWORD PTR -64[rbp], r8
	mov	QWORD PTR -72[rbp], r9
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -16[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -16[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR 4[rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L15
	mov	esi, DWORD PTR -44[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, compare[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	edx, DWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR -8[rbp], 0
	jmp	.L16
	mov	edi, 8
	mov	eax, 0
	call	malloc@PLT
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	QWORD PTR [rax], rdx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	rdx, QWORD PTR [rdx]
	add	rdx, 4
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 2
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -48[rbp]
	jl	.L17
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	free@PLT
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
0:
1:
2:
3:
4: