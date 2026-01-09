main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 176
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rdx, -176[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	movsx	rdx, eax
	mov	edx, DWORD PTR -176[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -176[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -176[rbp+rax*4]
	test	eax, eax
	jle	.L5
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 25
	jle	.L6
	mov	eax, 26
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L7
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L8
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	lea	rax, -64[rbp]
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
	jne	.L12
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L12
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