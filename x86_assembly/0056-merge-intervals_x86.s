compareIntervals:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	cmp	DWORD PTR -60[rbp], 1
	jg	.L4
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -60[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -56[rbp]
	jmp	.L5
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR 4[rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L7
	mov	esi, DWORD PTR -60[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, compareIntervals[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L8
	cmp	DWORD PTR -8[rbp], 0
	je	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 3
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L10
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR [rdx], rax
	jmp	.L11
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 3
	lea	rcx, -8[rax]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR 4[rax]
	mov	ecx, DWORD PTR -8[rbp]
	movsx	rcx, ecx
	sal	rcx, 3
	lea	rsi, -8[rcx]
	mov	rcx, QWORD PTR -32[rbp]
	add	rcx, rsi
	cmp	edx, eax
	cmovge	eax, edx
	mov	DWORD PTR 4[rcx], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -60[rbp]
	jl	.L12
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -40[rbp], rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR [rax], rdx
	mov	DWORD PTR -16[rbp], 0
	jmp	.L13
	mov	edi, 8
	mov	eax, 0
	call	malloc@PLT
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	QWORD PTR [rax], rdx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rcx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rdx]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	mov	rdx, QWORD PTR [rdx]
	add	rdx, 4
	mov	eax, DWORD PTR 4[rax]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 2
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L14
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	free@PLT
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	free@PLT
	mov	rax, QWORD PTR -40[rbp]
	leave
	ret
0:
1:
2:
3:
4: