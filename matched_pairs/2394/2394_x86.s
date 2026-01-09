Cost:
Dist:
Prev:
_Z8Dijkstraii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 424
	mov	DWORD PTR -532[rbp], edi
	mov	DWORD PTR -536[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -536[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, Cost[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Dist[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	BYTE PTR -528[rbp+rax], 0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 100000000
	jne	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Prev[rip]
	mov	DWORD PTR [rdx+rax], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Prev[rip]
	mov	eax, DWORD PTR -536[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -532[rbp]
	jl	.L5
	mov	eax, DWORD PTR -536[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR -536[rbp]
	cdqe
	mov	BYTE PTR -528[rbp+rax], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	DWORD PTR -12[rbp], 100000000
	mov	eax, DWORD PTR -536[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -528[rbp+rax]
	xor	eax, 1
	test	al, al
	je	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L8
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -532[rbp]
	jl	.L9
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	BYTE PTR -528[rbp+rax], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -528[rbp+rax]
	xor	eax, 1
	test	al, al
	je	.L11
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, Cost[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 99999999
	jg	.L11
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, Cost[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Dist[rip]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Prev[rip]
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -532[rbp]
	jl	.L12
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -532[rbp]
	jl	.L13
	nop
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 448
	lea	rdx, -432[rbp]
	mov	eax, 0
	mov	ecx, 50
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -4[rbp], 0
	lea	rsi, -24[rbp]
	lea	rcx, -20[rbp]
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L15
	mov	DWORD PTR -436[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -436[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 500
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, Cost[rip]
	mov	DWORD PTR [rdx+rax], 100000000
	mov	eax, DWORD PTR -436[rbp]
	add	eax, 1
	mov	DWORD PTR -436[rbp], eax
	mov	edx, DWORD PTR -436[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jl	.L17
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 2004
	lea	rdx, Cost[rip]
	mov	DWORD PTR [rax+rdx], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L18
	mov	DWORD PTR -8[rbp], 0
	jmp	.L19
	lea	rcx, -444[rbp]
	lea	rdx, -440[rbp]
	lea	rax, -436[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -436[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -440[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rax, edx
	imul	rax, rax, 500
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, Cost[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -444[rbp]
	cmp	edx, eax
	jle	.L20
	mov	eax, DWORD PTR -436[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -440[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -444[rbp]
	movsx	rcx, ecx
	movsx	rdx, edx
	imul	rdx, rdx, 500
	add	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Cost[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -440[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -436[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -444[rbp]
	movsx	rcx, ecx
	movsx	rdx, edx
	imul	rdx, rdx, 500
	add	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, Cost[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L21
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, 0
	mov	edi, eax
	call	_Z8Dijkstraii
	mov	DWORD PTR -8[rbp], 1
	jmp	.L22
	lea	rax, -436[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -436[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Dist[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	cmp	edx, eax
	jg	.L23
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	lea	ecx, 1[rax]
	mov	DWORD PTR -4[rbp], ecx
	cdqe
	mov	DWORD PTR -432[rbp+rax*4], edx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L24
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L25
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jl	.L26
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: