dp:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L4
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jle	.L4
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	DWORD PTR [rdx+rax], ecx
	sub	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jge	.L5
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jne	.L10
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L10
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