main:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -36864[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 208
	lea	rax, -37056[rbp]
	mov	edx, 37044
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -37060[rbp], 0
	jmp	.L2
	mov	DWORD PTR -37064[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	mov	DWORD PTR -37056[rbp+rax*4], 1
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 441
	add	rax, rdx
	mov	DWORD PTR -37056[rbp+rax*4], 1
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	movsx	rdx, edx
	movsx	rcx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	imul	rdx, rcx, 1764
	add	rax, rdx
	add	rax, rbp
	sub	rax, 37056
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -37064[rbp]
	add	eax, 1
	mov	DWORD PTR -37064[rbp], eax
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, 20
	jle	.L4
	mov	eax, DWORD PTR -37060[rbp]
	add	eax, 1
	mov	DWORD PTR -37060[rbp], eax
	mov	eax, DWORD PTR -37060[rbp]
	cmp	eax, 20
	jle	.L5
	mov	DWORD PTR -37060[rbp], 1
	jmp	.L6
	mov	DWORD PTR -37064[rbp], 1
	jmp	.L7
	mov	DWORD PTR -37068[rbp], 1
	jmp	.L8
	mov	edx, DWORD PTR -37060[rbp]
	mov	eax, DWORD PTR -37064[rbp]
	cmp	edx, eax
	jge	.L9
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37068[rbp]
	cmp	edx, eax
	jge	.L9
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	ecx, DWORD PTR -37068[rbp]
	sub	ecx, 1
	movsx	rcx, ecx
	cdqe
	movsx	rdx, edx
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	mov	esi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	lea	ecx, -1[rdx]
	mov	edx, DWORD PTR -37068[rbp]
	sub	edx, 1
	movsx	rdi, edx
	cdqe
	movsx	rdx, ecx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rdi
	mov	eax, DWORD PTR -37056[rbp+rax*4]
	lea	ecx, [rsi+rax]
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	lea	esi, -1[rdx]
	mov	edx, DWORD PTR -37068[rbp]
	movsx	rdi, edx
	cdqe
	movsx	rdx, esi
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rdi
	mov	edi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	esi, DWORD PTR -37068[rbp]
	sub	ecx, edi
	movsx	rsi, esi
	cdqe
	movsx	rdx, edx
	imul	rdi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rdi
	add	rax, rsi
	mov	DWORD PTR -37056[rbp+rax*4], ecx
	jmp	.L10
	mov	eax, DWORD PTR -37060[rbp]
	lea	ecx, -1[rax]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37068[rbp]
	movsx	rsi, eax
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rsi
	mov	esi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37060[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -37064[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -37068[rbp]
	movsx	rdi, eax
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rdi
	mov	eax, DWORD PTR -37056[rbp+rax*4]
	lea	edi, [rsi+rax]
	mov	eax, DWORD PTR -37060[rbp]
	lea	ecx, -1[rax]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37068[rbp]
	sub	eax, 1
	movsx	rsi, eax
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rcx, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rcx
	add	rax, rsi
	mov	eax, DWORD PTR -37056[rbp+rax*4]
	lea	ecx, [rdi+rax]
	mov	eax, DWORD PTR -37060[rbp]
	lea	esi, -1[rax]
	mov	eax, DWORD PTR -37064[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -37068[rbp]
	sub	eax, 1
	movsx	rdi, eax
	movsx	rax, esi
	movsx	rdx, edx
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rdi
	mov	edi, DWORD PTR -37056[rbp+rax*4]
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	esi, DWORD PTR -37068[rbp]
	sub	ecx, edi
	movsx	rsi, esi
	cdqe
	movsx	rdx, edx
	imul	rdi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rdi
	add	rax, rsi
	mov	DWORD PTR -37056[rbp+rax*4], ecx
	mov	eax, DWORD PTR -37068[rbp]
	add	eax, 1
	mov	DWORD PTR -37068[rbp], eax
	mov	eax, DWORD PTR -37068[rbp]
	cmp	eax, 20
	jle	.L11
	mov	eax, DWORD PTR -37064[rbp]
	add	eax, 1
	mov	DWORD PTR -37064[rbp], eax
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, 20
	jle	.L12
	mov	eax, DWORD PTR -37060[rbp]
	add	eax, 1
	mov	DWORD PTR -37060[rbp], eax
	mov	eax, DWORD PTR -37060[rbp]
	cmp	eax, 20
	jle	.L13
	lea	rcx, -37068[rbp]
	lea	rdx, -37064[rbp]
	lea	rax, -37060[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L14
	mov	eax, DWORD PTR -37060[rbp]
	test	eax, eax
	jle	.L15
	mov	eax, DWORD PTR -37064[rbp]
	test	eax, eax
	jle	.L15
	mov	eax, DWORD PTR -37068[rbp]
	test	eax, eax
	jg	.L16
	mov	ecx, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37060[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L17
	mov	eax, DWORD PTR -37060[rbp]
	cmp	eax, 20
	jg	.L18
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, 20
	jg	.L18
	mov	eax, DWORD PTR -37068[rbp]
	cmp	eax, 20
	jle	.L19
	mov	esi, DWORD PTR -16[rbp]
	mov	ecx, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37060[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L17
	mov	eax, DWORD PTR -37060[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	ecx, DWORD PTR -37068[rbp]
	movsx	rcx, ecx
	cdqe
	movsx	rdx, edx
	imul	rsi, rax, 441
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	mov	esi, DWORD PTR -37056[rbp+rax*4]
	mov	ecx, DWORD PTR -37068[rbp]
	mov	edx, DWORD PTR -37064[rbp]
	mov	eax, DWORD PTR -37060[rbp]
	mov	r8d, esi
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rcx, -37068[rbp]
	lea	rdx, -37064[rbp]
	lea	rax, -37060[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -37060[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, DWORD PTR -37064[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, DWORD PTR -37068[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: