rank:
parent:
edge:
_Z3cmpPKvS0_:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip+8]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jge	.L2
	mov	eax, 1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip+8]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jle	.L4
	mov	eax, -1
	jmp	.L3
	mov	eax, 0
	pop	rbp
	ret
_Z4rooti:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jns	.L7
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jne	.L9
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
_Z5mergeii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z4rooti
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	_Z4rooti
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L12
	mov	eax, 1
	jmp	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L14
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, 0
	jmp	.L13
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, parent[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, 0
	leave
	ret
_Z7kruskalii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -4[rbp], 0
	mov	edx, 4000
	mov	esi, -1
	lea	rax, parent[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	lea	rdx, _Z3cmpPKvS0_[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, rank[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L16
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, rank[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, rank[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, edge[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	_Z5mergeii
	movzx	eax, al
	test	eax, eax
	sete	al
	test	al, al
	je	.L17
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, rank[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L18
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L19
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	je	.L20
	mov	eax, -1
	jmp	.L21
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L23
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, edge[rip]
	add	rax, rdx
	lea	rcx, 8[rax]
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, rank[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -12[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, edge[rip+4]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z7kruskalii
	mov	esi, eax
	lea	rax, .LC2[rip]
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