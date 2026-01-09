f:
d:
max:
min:
n:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, f[rip]
	add	rax, rdx
	lea	rdx, 4[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, f[rip]
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+4]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+8]
	mov	DWORD PTR [rdx+rax], 2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR min[rip]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR min[rip], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR max[rip]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR max[rip], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L5
	mov	eax, DWORD PTR min[rip]
	mov	edi, eax
	call	bellman_ford
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
bellman_ford:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR min[rip]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], -99999
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR max[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L9
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], 0
	mov	eax, DWORD PTR min[rip]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L11
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -99999
	je	.L25
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, esi
	cmp	ecx, eax
	jge	.L13
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+8]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, f[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, esi
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L13
	nop
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR min[rip]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L15
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -99999
	je	.L16
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jle	.L16
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, ecx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, d[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	DWORD PTR -12[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR max[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR max[rip]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L18
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -99999
	je	.L19
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jle	.L19
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	sub	edx, 1
	lea	ecx, -1[rax]
	movsx	rax, edx
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	DWORD PTR -12[rbp], 1
	sub	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR min[rip]
	cmp	DWORD PTR -8[rbp], eax
	jg	.L20
	cmp	DWORD PTR -12[rbp], 0
	je	.L26
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR max[rip]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L23
	jmp	.L22
	nop
	mov	eax, DWORD PTR max[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, d[rip]
	mov	eax, DWORD PTR [rdx+rax]
	pop	rbp
	ret
0:
1:
2:
3:
4: