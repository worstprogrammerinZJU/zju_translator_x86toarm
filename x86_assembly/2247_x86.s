main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	DWORD PTR -60[rbp], -1
	mov	WORD PTR -88[rbp], 26740
	mov	BYTE PTR -86[rbp], 0
	mov	WORD PTR -85[rbp], 29811
	mov	BYTE PTR -83[rbp], 0
	mov	WORD PTR -82[rbp], 25710
	mov	BYTE PTR -80[rbp], 0
	mov	WORD PTR -79[rbp], 25714
	mov	BYTE PTR -77[rbp], 0
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR [rax], 1
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -72[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L2
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 2863311531
	imul	rax, rdx
	shr	rax, 32
	shr	eax
	mov	edx, eax
	add	edx, edx
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, ecx
	imul	rax, rax, 613566757
	shr	rax, 32
	mov	rdx, rax
	mov	eax, ecx
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 2
	mov	edx, eax
	sal	edx, 3
	sub	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L3
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -60[rbp]
	shr	edx
	cmp	eax, edx
	ja	.L3
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, [rax+rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L4
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L5
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L6
	cmp	QWORD PTR -40[rbp], 0
	jne	.L7
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L8
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	edx, ecx
	mov	eax, 3435973837
	imul	rax, rdx
	shr	rax, 32
	shr	eax, 2
	mov	edx, eax
	sal	edx, 2
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L9
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, ecx
	imul	rax, rax, 613566757
	shr	rax, 32
	mov	rdx, rax
	mov	eax, ecx
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 2
	mov	edx, eax
	sal	edx, 3
	sub	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L9
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -60[rbp]
	mov	ecx, edx
	mov	edx, 2863311531
	imul	rdx, rcx
	shr	rdx, 32
	shr	edx
	cmp	eax, edx
	ja	.L9
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L10
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L11
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L12
	cmp	QWORD PTR -40[rbp], 0
	jne	.L13
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L14
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	ecx, DWORD PTR [rax]
	mov	eax, ecx
	imul	rax, rax, 613566757
	shr	rax, 32
	mov	rdx, rax
	mov	eax, ecx
	sub	eax, edx
	shr	eax
	add	eax, edx
	shr	eax, 2
	mov	edx, eax
	sal	edx, 3
	sub	edx, eax
	mov	eax, ecx
	sub	eax, edx
	test	eax, eax
	je	.L15
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -60[rbp]
	mov	ecx, edx
	mov	edx, 3435973837
	imul	rdx, rcx
	shr	rdx, 32
	shr	edx, 2
	cmp	eax, edx
	ja	.L15
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	sal	eax, 2
	add	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L16
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L17
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L18
	cmp	QWORD PTR -40[rbp], 0
	jne	.L19
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L15
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -60[rbp]
	mov	ecx, eax
	imul	rcx, rcx, 613566757
	shr	rcx, 32
	sub	eax, ecx
	shr	eax
	add	eax, ecx
	shr	eax, 2
	cmp	edx, eax
	ja	.L20
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	eax, edx
	sal	eax, 3
	sub	eax, edx
	mov	ecx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	DWORD PTR [rax], ecx
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	jmp	.L21
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	cmp	QWORD PTR -40[rbp], 0
	je	.L22
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jb	.L23
	cmp	QWORD PTR -40[rbp], 0
	jne	.L24
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], 0
	jmp	.L20
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -16[rbp], rax
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 4816
	jle	.L25
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L26
	mov	ecx, DWORD PTR -76[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 1
	jne	.L27
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 100
	sub	eax, ecx
	mov	edx, eax
	cmp	edx, 11
	je	.L27
	mov	DWORD PTR -8[rbp], 1
	jmp	.L28
	mov	ecx, DWORD PTR -76[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 2
	jne	.L29
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 100
	sub	eax, ecx
	mov	edx, eax
	cmp	edx, 12
	je	.L29
	mov	DWORD PTR -8[rbp], 2
	jmp	.L28
	mov	ecx, DWORD PTR -76[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	cmp	edx, 3
	jne	.L30
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1374389535
	shr	rdx, 32
	sar	edx, 5
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	imul	ecx, edx, 100
	sub	eax, ecx
	mov	edx, eax
	cmp	edx, 13
	je	.L30
	mov	DWORD PTR -8[rbp], 3
	jmp	.L28
	mov	DWORD PTR -8[rbp], 0
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L31
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -32[rbp], rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -76[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L32
	mov	rax, QWORD PTR -32[rbp]
	mov	edx, DWORD PTR [rax]
	lea	rsi, -88[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	add	rsi, rax
	mov	eax, DWORD PTR -76[rbp]
	mov	ecx, edx
	mov	rdx, rsi
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -76[rbp]
	test	eax, eax
	jne	.L33
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: