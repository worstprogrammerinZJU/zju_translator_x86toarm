queue:
print:
_Z4findi:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L3
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L4
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L7
	lea	rdx, -28[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, print[rip]
	mov	BYTE PTR [rax+rdx], 0
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, print[rip]
	mov	BYTE PTR [rax+rdx], 1
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -32[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L11
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, queue[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, edx
	cdqe
	lea	rdx, print[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, print[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -8[rbp], 1
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jl	.L12
	mov	DWORD PTR -8[rbp], 0
	jmp	.L13
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, queue[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	add	eax, 1
	cdqe
	lea	rdx, print[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, print[rip]
	mov	BYTE PTR [rax+rcx], dl
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	mov	DWORD PTR -32[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	_Z4findi
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -16[rbp], eax
	setne	al
	test	al, al
	jne	.L15
	mov	DWORD PTR -8[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, queue[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -16[rbp], eax
	jne	.L17
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, print[rip]
	movzx	eax, BYTE PTR [rax+rdx]
	movzx	eax, al
	cmp	eax, 1
	je	.L22
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L19
	jmp	.L18
	nop
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L20
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: