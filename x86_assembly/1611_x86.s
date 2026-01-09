parent:
_Z4rooti:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
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
	jns	.L3
	jmp	.L4
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
	jne	.L5
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
	jne	.L8
	mov	eax, 1
	jmp	.L9
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
	jge	.L10
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
	jmp	.L9
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
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	jmp	.L12
	mov	edx, 120000
	mov	esi, -1
	lea	rax, parent[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L13
	lea	rdx, -12[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	_Z4rooti
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -8[rbp], 1
	jmp	.L14
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z5mergeii
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L15
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	mov	edi, 0
	call	_Z4rooti
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -16[rbp], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L17
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	_Z4rooti
	mov	edx, DWORD PTR -12[rbp]
	cmp	eax, edx
	sete	al
	test	al, al
	je	.L18
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -28[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	jne	.L20
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	je	.L21
	mov	eax, 1
	jmp	.L22
	mov	eax, 0
	test	al, al
	jne	.L23
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: