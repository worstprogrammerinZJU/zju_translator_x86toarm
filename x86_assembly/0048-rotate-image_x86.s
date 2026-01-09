rotate:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	QWORD PTR -56[rbp], rdx
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L2
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	ecx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, ecx
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	edx, DWORD PTR -16[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*8]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rcx
	mov	rcx, QWORD PTR [rdx]
	mov	esi, DWORD PTR -4[rbp]
	mov	edx, DWORD PTR -12[rbp]
	add	edx, esi
	movsx	rdx, edx
	sal	rdx, 2
	add	rdx, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rdx, rax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, DWORD PTR -4[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L4
	sub	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L5
	nop
	nop
	pop	rbp
	ret
0:
1:
2:
3:
4: