main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 288
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rdx, -176[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, 25
	jg	.L2
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	lea	rdx, -288[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -4[rbp], 0
	jmp	.L4
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -13[rbp], al
	movsx	eax, BYTE PTR -13[rbp]
	mov	edi, eax
	call	isalpha@PLT
	test	eax, eax
	setne	al
	test	al, al
	je	.L5
	movsx	eax, BYTE PTR -13[rbp]
	mov	edi, eax
	call	tolower@PLT
	sub	eax, 97
	cdqe
	mov	DWORD PTR -288[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	BYTE PTR -5[rbp], 1
	mov	DWORD PTR -12[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -288[rbp+rax*4]
	test	eax, eax
	jne	.L8
	mov	BYTE PTR -5[rbp], 0
	jmp	.L9
	add	DWORD PTR -12[rbp], 1
	cmp	DWORD PTR -12[rbp], 25
	jle	.L10
	cmp	BYTE PTR -5[rbp], 0
	je	.L11
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L3
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
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
	jne	.L16
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L16
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