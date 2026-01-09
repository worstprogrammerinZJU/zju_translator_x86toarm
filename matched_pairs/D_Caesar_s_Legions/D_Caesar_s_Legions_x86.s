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
n1:
n2:
k1:
k2:
_ZL3mod:
dp:
_Z3soliiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	eax, DWORD PTR n1[rip]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L3
	mov	eax, DWORD PTR n2[rip]
	cmp	DWORD PTR -24[rbp], eax
	jne	.L3
	mov	eax, 1
	jmp	.L4
	mov	eax, DWORD PTR -32[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	imul	rsi, rax, 225
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	add	rax, rsi
	lea	rdx, [rcx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 23625
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L5
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	jmp	.L4
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	mov	eax, DWORD PTR k1[rip]
	cmp	DWORD PTR -28[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR n1[rip]
	cmp	DWORD PTR -20[rbp], eax
	jge	.L6
	mov	eax, DWORD PTR -28[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	lea	edi, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	ecx, 0
	mov	esi, eax
	call	_Z3soliiii
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR k2[rip]
	cmp	DWORD PTR -32[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR n2[rip]
	cmp	DWORD PTR -24[rbp], eax
	jge	.L7
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -24[rbp]
	lea	esi, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	ecx, edx
	mov	edx, 0
	mov	edi, eax
	call	_Z3soliiii
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	edx, eax
	movsx	rax, edx
	imul	rax, rax, 1441151881
	shr	rax, 32
	sar	eax, 25
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 100000000
	mov	eax, edx
	sub	eax, ecx
	mov	rdx, QWORD PTR -16[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	call	_Z5setupv
	lea	rax, n1[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, n2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, k1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, k2[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	edx, 9922500
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	ecx, 0
	mov	edx, 0
	mov	esi, 0
	mov	edi, 0
	call	_Z3soliiii
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	eax, 0
	pop	rbp
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