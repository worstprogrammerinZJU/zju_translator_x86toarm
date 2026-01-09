main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 3984
	lea	rax, -44[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rdx, -4064[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -8[rbp], 0
	jmp	.L4
	lea	rdx, -8080[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L5
	mov	DWORD PTR -12[rbp], 0
	jmp	.L6
	mov	DWORD PTR -16[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	edx, DWORD PTR -4064[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cdqe
	mov	eax, DWORD PTR -4064[rbp+rax*4]
	cmp	edx, eax
	jle	.L8
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	eax, DWORD PTR -4064[rbp+rax*4]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -4064[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	DWORD PTR -4064[rbp+rax*4], edx
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -40[rbp]
	mov	DWORD PTR -4064[rbp+rax*4], edx
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	cmp	DWORD PTR -16[rbp], eax
	jl	.L9
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	cmp	DWORD PTR -12[rbp], eax
	jl	.L10
	mov	DWORD PTR -20[rbp], 0
	jmp	.L11
	mov	DWORD PTR -24[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	edx, DWORD PTR -8080[rbp+rax*4]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cdqe
	mov	eax, DWORD PTR -8080[rbp+rax*4]
	cmp	edx, eax
	jle	.L13
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	eax, DWORD PTR -8080[rbp+rax*4]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -8080[rbp+rax*4]
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	DWORD PTR -8080[rbp+rax*4], edx
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	cdqe
	mov	edx, DWORD PTR -36[rbp]
	mov	DWORD PTR -8080[rbp+rax*4], edx
	add	DWORD PTR -24[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	cmp	DWORD PTR -24[rbp], eax
	jl	.L14
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jl	.L15
	mov	BYTE PTR -25[rbp], 1
	mov	DWORD PTR -32[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	edx, DWORD PTR -4064[rbp+rax*4]
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	mov	eax, DWORD PTR -8080[rbp+rax*4]
	cmp	edx, eax
	je	.L17
	mov	BYTE PTR -25[rbp], 0
	jmp	.L18
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -44[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jl	.L19
	cmp	BYTE PTR -25[rbp], 0
	je	.L20
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L21
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
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
	jne	.L25
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L25
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