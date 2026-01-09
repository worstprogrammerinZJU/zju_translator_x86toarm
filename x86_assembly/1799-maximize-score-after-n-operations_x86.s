	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	jmp	.L2
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -24[rbp], edx
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -20[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	jne	.L3
	mov	eax, DWORD PTR -20[rbp]
	pop	rbp
	ret
max:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	pop	rbp
	ret
func:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	DWORD PTR -64[rbp], edx
	mov	QWORD PTR -72[rbp], rcx
	mov	QWORD PTR -80[rbp], r8
	mov	DWORD PTR -84[rbp], r9d
	mov	eax, DWORD PTR -84[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jle	.L8
	mov	eax, 0
	jmp	.L9
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	jmp	.L9
	mov	DWORD PTR -20[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, DWORD PTR -64[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L19
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	jmp	.L14
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -64[rbp]
	mov	ecx, eax
	sar	edx, cl
	mov	eax, edx
	and	eax, 1
	test	eax, eax
	jne	.L20
	mov	eax, DWORD PTR -20[rbp]
	mov	edx, 1
	mov	ecx, eax
	sal	edx, cl
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, 1
	mov	ecx, eax
	sal	esi, cl
	mov	eax, esi
	or	eax, edx
	or	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	imul	eax, DWORD PTR -60[rbp]
	mov	ebx, eax
	mov	eax, DWORD PTR -60[rbp]
	lea	esi, 1[rax]
	mov	r8d, DWORD PTR -84[rbp]
	mov	rdi, QWORD PTR -80[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	edx, DWORD PTR -32[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	r9d, r8d
	mov	r8, rdi
	mov	rdi, rax
	call	func
	add	eax, ebx
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -72[rbp]
	lea	rbx, [rcx+rdx]
	mov	edx, DWORD PTR -36[rbp]
	mov	esi, edx
	mov	edi, eax
	call	max
	mov	DWORD PTR [rbx], eax
	jmp	.L16
	nop
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -84[rbp]
	jl	.L17
	jmp	.L13
	nop
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -84[rbp]
	jl	.L18
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
maxScore:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -88[rbp], rdi
	mov	DWORD PTR -92[rbp], esi
	mov	eax, DWORD PTR -92[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -92[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L22
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 2
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -56[rbp]
	lea	rbx, [rcx+rdx]
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR [rbx], rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L23
	mov	DWORD PTR -24[rbp], 0
	jmp	.L24
	mov	DWORD PTR -28[rbp], 0
	jmp	.L25
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	mov	ecx, DWORD PTR -24[rbp]
	movsx	rcx, ecx
	lea	rsi, 0[0+rcx*8]
	mov	rcx, QWORD PTR -56[rbp]
	add	rcx, rsi
	mov	rsi, QWORD PTR [rcx]
	mov	ecx, DWORD PTR -28[rbp]
	movsx	rcx, ecx
	sal	rcx, 2
	lea	rbx, [rsi+rcx]
	mov	esi, edx
	mov	edi, eax
	call	greatestCommonDivisor
	mov	DWORD PTR [rbx], eax
	add	DWORD PTR -28[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L26
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L27
	mov	edi, 65536
	call	malloc@PLT
	mov	QWORD PTR -64[rbp], rax
	mov	DWORD PTR -32[rbp], 0
	jmp	.L28
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], -1
	add	DWORD PTR -32[rbp], 1
	cmp	DWORD PTR -32[rbp], 16383
	jle	.L29
	mov	esi, DWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	r9d, esi
	mov	r8, rcx
	mov	rcx, rdx
	mov	edx, 0
	mov	esi, 1
	mov	rdi, rax
	call	func
	mov	DWORD PTR -68[rbp], eax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L30
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	add	DWORD PTR -36[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L31
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	eax, DWORD PTR -68[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
0:
1:
2:
3:
4: