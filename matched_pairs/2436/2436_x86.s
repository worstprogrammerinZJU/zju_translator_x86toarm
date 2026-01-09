n:
d:
k:
cow:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	DWORD PTR -12[rbp], 0
	lea	rax, k[rip]
	mov	rcx, rax
	lea	rax, d[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR d[rip]
	mov	edx, DWORD PTR k[rip]
	sub	eax, edx
	mov	DWORD PTR k[rip], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -96[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, cow[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L7
	mov	edx, DWORD PTR k[rip]
	mov	eax, DWORD PTR d[rip]
	mov	esi, edx
	mov	edi, eax
	call	_Z6cozuheii
	mov	DWORD PTR -4[rbp], eax
	jmp	.L8
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
	mov	DWORD PTR -24[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	eax, DWORD PTR -96[rbp+rax*4]
	movsx	rcx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	lea	rdx, [rax+rcx]
	lea	rax, cow[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	je	.L19
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR k[rip]
	cmp	edx, eax
	jl	.L13
	jmp	.L12
	nop
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR k[rip]
	cmp	edx, eax
	jne	.L14
	add	DWORD PTR -16[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L15
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jle	.L16
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR d[rip]
	mov	ecx, DWORD PTR k[rip]
	lea	rax, -96[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	_Z4zuhePiii
	sub	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 0
	jg	.L17
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
_Z4zuhePiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -32[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L21
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	edx, DWORD PTR -32[rbp]
	sub	edx, 1
	cmp	eax, edx
	jge	.L22
	mov	edx, DWORD PTR -28[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	rsi, rcx
	mov	edi, eax
	call	_Z5equaliPii
	movzx	eax, al
	cmp	eax, 1
	jne	.L22
	mov	eax, 1
	jmp	.L23
	mov	eax, 0
	test	al, al
	je	.L24
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L25
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	add	edx, 1
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L26
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L27
	nop
	nop
	leave
	ret
_Z5equaliPii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	DWORD PTR -24[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L29
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L30
	mov	eax, 0
	jmp	.L31
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L32
	mov	eax, 1
	pop	rbp
	ret
_Z6cozuheii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -24[rbp], eax
	jle	.L34
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -24[rbp], eax
	mov	DWORD PTR -4[rbp], 1
	jmp	.L35
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	sub	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jle	.L36
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
0:
1:
2:
3:
4: