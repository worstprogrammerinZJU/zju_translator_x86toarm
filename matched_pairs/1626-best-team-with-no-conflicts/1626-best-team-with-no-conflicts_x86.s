comparePlayers:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	je	.L2
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	jmp	.L3
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR 4[rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
bestTeamScore:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -104[rbp], rdi
	mov	DWORD PTR -108[rbp], esi
	mov	QWORD PTR -120[rbp], rdx
	mov	DWORD PTR -112[rbp], ecx
	mov	rax, rsp
	mov	rbx, rax
	mov	eax, DWORD PTR -108[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -72[rbp], rdx
	movsx	rdx, eax
	mov	r10, rdx
	mov	r11d, 0
	movsx	rdx, eax
	mov	r8, rdx
	mov	r9d, 0
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L6
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L5
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L7
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -80[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -120[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*8], ecx
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -104[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -52[rbp]
	movsx	rdx, edx
	mov	DWORD PTR 4[rax+rdx*8], ecx
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	cmp	eax, DWORD PTR -108[rbp]
	jl	.L9
	mov	esi, DWORD PTR -108[rbp]
	mov	rax, QWORD PTR -80[rbp]
	lea	rdx, comparePlayers[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	eax, DWORD PTR -108[rbp]
	movsx	rdx, eax
	sub	rdx, 1
	mov	QWORD PTR -88[rbp], rdx
	movsx	rdx, eax
	mov	r14, rdx
	mov	r15d, 0
	movsx	rdx, eax
	mov	r12, rdx
	mov	r13d, 0
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L11
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L10
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L12
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -96[rbp], rax
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR -60[rbp], 0
	jmp	.L13
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR 4[rax+rdx*8]
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	mov	DWORD PTR -64[rbp], 0
	jmp	.L14
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR 4[rax+rdx*8]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR 4[rax+rdx*8]
	cmp	ecx, eax
	jg	.L15
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -64[rbp]
	movsx	rdx, edx
	mov	ecx, DWORD PTR [rax+rdx*4]
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR 4[rax+rdx*8]
	lea	edx, [rcx+rax]
	mov	rax, QWORD PTR -96[rbp]
	mov	ecx, DWORD PTR -60[rbp]
	movsx	rcx, ecx
	mov	eax, DWORD PTR [rax+rcx*4]
	cmp	edx, eax
	cmovge	eax, edx
	mov	ecx, eax
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L16
	mov	rax, QWORD PTR -96[rbp]
	mov	edx, DWORD PTR -60[rbp]
	movsx	rdx, edx
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	edx, DWORD PTR -56[rbp]
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR -56[rbp], eax
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, DWORD PTR -108[rbp]
	jl	.L17
	mov	eax, DWORD PTR -56[rbp]
	mov	rsp, rbx
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
0:
1:
2:
3:
4: