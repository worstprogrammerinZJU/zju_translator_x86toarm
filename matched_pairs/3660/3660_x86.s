Dist:
N:
M:
degree:
_Z14Floyd_Warshalli:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, Dist[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L5
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, Dist[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L6
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, Dist[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L6
	mov	ecx, 1
	jmp	.L7
	mov	ecx, 0
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, Dist[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L8
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L9
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L10
	nop
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, M[rip]
	mov	rdx, rax
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -16[rbp]
	sub	eax, 1
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, Dist[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR M[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L13
	mov	eax, DWORD PTR N[rip]
	mov	edi, eax
	call	_Z14Floyd_Warshalli
	mov	DWORD PTR -4[rbp], 0
	jmp	.L14
	mov	DWORD PTR -8[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, Dist[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L16
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, degree[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, degree[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, degree[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, degree[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L17
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L19
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, degree[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR N[rip]
	sub	edx, 1
	cmp	eax, edx
	jne	.L20
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L21
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: