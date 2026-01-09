w:
h:
map:
path:
bfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -16384[rsp]
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2848
	mov	DWORD PTR -19220[rbp], edi
	mov	DWORD PTR -19224[rbp], esi
	lea	rax, -12816[rbp]
	mov	edx, 12800
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -19220[rbp]
	mov	DWORD PTR -12816[rbp], eax
	mov	eax, DWORD PTR -19224[rbp]
	mov	DWORD PTR -12812[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	lea	rdx, -19216[rbp]
	mov	eax, 0
	mov	ecx, 800
	mov	rdi, rdx
	rep stosq
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	DWORD PTR -19216[rbp+rax*4], 1
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -12816[rbp+rax*8]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -12812[rbp+rax*8]
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -12[rbp], 0
	jle	.L3
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L3
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L3
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -12[rbp]
	sub	edx, 1
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR h[rip]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L5
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L6
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L5
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -12[rbp]
	add	edx, 1
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -16[rbp], 0
	jle	.L7
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L7
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -16[rbp]
	sub	edx, 1
	lea	ecx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR w[rip]
	sub	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jge	.L9
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L9
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L10
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -16[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -16[rbp]
	add	edx, 1
	lea	ecx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jl	.L11
	mov	DWORD PTR -12[rbp], 0
	jmp	.L12
	mov	DWORD PTR -16[rbp], 0
	jmp	.L13
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	je	.L20
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L16
	jmp	.L15
	nop
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L21
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L19
	jmp	.L18
	nop
	mov	eax, DWORD PTR -16[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
ok:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 0
	js	.L23
	cmp	DWORD PTR -8[rbp], 0
	js	.L23
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L23
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L24
	mov	eax, 0
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	jne	.L26
	mov	eax, 0
	jmp	.L25
	mov	eax, 1
	pop	rbp
	ret
left:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	jmp	.L28
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 3
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ok
	test	eax, eax
	je	.L29
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 3
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	jne	.L30
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
right:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -8[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	jmp	.L32
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	add	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 3
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ok
	test	eax, eax
	je	.L33
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	jne	.L34
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L36
	lea	rax, h[rip]
	mov	rdx, rax
	lea	rax, w[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L37
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, map[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L38
	mov	DWORD PTR -8[rbp], 0
	jmp	.L39
	mov	DWORD PTR -12[rbp], 0
	jmp	.L40
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	je	.L49
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L43
	jmp	.L42
	nop
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L50
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L46
	jmp	.L45
	nop
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	left
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	right
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	bfs
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L47
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: