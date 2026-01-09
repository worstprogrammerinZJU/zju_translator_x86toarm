_Z5setupv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	call	_Z5setupv
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, -56[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	QWORD PTR -8[rbp], 0
	mov	QWORD PTR -16[rbp], 0
	jmp	.L3
	mov	QWORD PTR -24[rbp], 0
	jmp	.L4
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, 1
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	sub	rax, 1
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, 1
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	sub	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	cmp	QWORD PTR -32[rbp], rax
	jl	.L5
	mov	rax, QWORD PTR -56[rbp]
	cmp	QWORD PTR -32[rbp], rax
	jg	.L5
	add	QWORD PTR -8[rbp], 1
	add	QWORD PTR -24[rbp], 1
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, 1
	cmp	QWORD PTR -24[rbp], rax
	jl	.L6
	add	QWORD PTR -16[rbp], 1
	cmp	QWORD PTR -16[rbp], 0
	je	.L7
	mov	rax, QWORD PTR -16[rbp]
	sub	eax, 1
	mov	edx, 1
	mov	ecx, eax
	sal	rdx, cl
	jmp	.L8
	mov	edx, 1
	mov	rax, QWORD PTR -56[rbp]
	cmp	rdx, rax
	jle	.L9
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L13
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L13
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: