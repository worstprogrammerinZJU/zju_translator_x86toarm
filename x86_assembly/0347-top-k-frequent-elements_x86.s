compareHeap:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, DWORD PTR 4[rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
topKFrequent:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -77824[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2240
	mov	QWORD PTR -80040[rbp], rdi
	mov	DWORD PTR -80044[rbp], esi
	mov	DWORD PTR -80048[rbp], edx
	mov	QWORD PTR -80056[rbp], rcx
	lea	rax, -80032[rbp]
	mov	edx, 80004
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80040[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	eax, 10000
	movsx	rdx, eax
	mov	edx, DWORD PTR -80032[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -80032[rbp+rax*4], edx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80040[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	eax, 10000
	cdqe
	mov	eax, DWORD PTR -80032[rbp+rax*4]
	test	eax, eax
	je	.L5
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -80044[rbp]
	jl	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 0
	mov	rdi, rax
	mov	eax, 0
	call	memset@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -80032[rbp+rax*4]
	test	eax, eax
	jle	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -4[rbp]
	sub	edx, 10000
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -80032[rbp+rax*4]
	mov	DWORD PTR 4[rdx], eax
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 20000
	jle	.L9
	mov	esi, DWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, compareHeap[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR -80048[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	mov	eax, 0
	call	malloc@PLT
	cdqe
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -80048[rbp]
	jl	.L11
	mov	rax, QWORD PTR -80056[rbp]
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
0:
1:
2:
3:
4: