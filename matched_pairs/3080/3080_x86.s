count:
s:
ans:
goal:
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, goal[rip]
	movzx	ecx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rsi]
	lea	rax, s[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	cl, al
	jne	.L10
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	jmp	.L5
	nop
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jne	.L7
	mov	eax, 1
	jmp	.L8
	add	DWORD PTR -12[rbp], 1
	mov	eax, 60
	sub	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L9
	mov	eax, 0
	pop	rbp
	ret
copy:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L12
	mov	ecx, DWORD PTR count[rip]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, goal[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rcx, ecx
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 4
	lea	rcx, [rax+rsi]
	lea	rax, ans[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L13
	mov	eax, DWORD PTR count[rip]
	add	eax, 1
	mov	DWORD PTR count[rip], eax
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
	mov	edx, 1200
	mov	esi, 0
	lea	rax, ans[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, goal[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, s[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	cmp	DWORD PTR -8[rbp], eax
	jl	.L17
	mov	DWORD PTR -16[rbp], 60
	jmp	.L18
	mov	DWORD PTR count[rip], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L19
	mov	DWORD PTR -12[rbp], 0
	jmp	.L20
	mov	edx, DWORD PTR -12[rbp]
	mov	ecx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	find
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	je	.L37
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jl	.L23
	jmp	.L22
	nop
	mov	eax, DWORD PTR -32[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jne	.L24
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	copy
	mov	DWORD PTR -20[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, 60
	sub	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jle	.L25
	cmp	DWORD PTR -20[rbp], 0
	je	.L26
	mov	DWORD PTR -8[rbp], 0
	jmp	.L27
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	mov	DWORD PTR -12[rbp], eax
	jmp	.L28
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 4
	lea	rcx, ans[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jle	.L29
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 4
	lea	rcx, ans[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcpy@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR count[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L30
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR count[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L31
	lea	rax, ans[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L32
	sub	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 2
	jg	.L33
	cmp	DWORD PTR -20[rbp], 0
	jne	.L34
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L35
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: