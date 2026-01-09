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
n:
m:
_ZL3mod:
dp:
_Z3solii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	cmp	DWORD PTR -20[rbp], 1
	jne	.L3
	cmp	DWORD PTR -24[rbp], 1
	jne	.L3
	mov	eax, 1
	jmp	.L4
	cmp	DWORD PTR -20[rbp], 0
	jle	.L5
	cmp	DWORD PTR -24[rbp], 0
	jg	.L6
	mov	eax, 0
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 3005
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	cmp	rax, -1
	je	.L7
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 3005
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	mov	rbx, rax
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	lea	rcx, [rbx+rax]
	movabs	rdx, -8543223828751151131
	mov	rax, rcx
	imul	rdx
	lea	rax, [rdx+rcx]
	sar	rax, 29
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	imul	rdx, rax, 1000000007
	mov	rax, rcx
	sub	rax, rdx
	mov	edx, DWORD PTR -24[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 3005
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, dp[rip]
	mov	QWORD PTR [rcx+rdx], rax
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	imul	rax, rax, 3005
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	_Z5setupv
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	edx, 72240200
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	QWORD PTR dp[rip+24048], 1
	mov	DWORD PTR -4[rbp], 1
	jmp	.L9
	mov	DWORD PTR -8[rbp], 1
	jmp	.L10
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 3000
	jle	.L11
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 3000
	jle	.L12
	jmp	.L13
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, m[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR n[rip]
	mov	edx, DWORD PTR m[rip]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 3005
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -12[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L14
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
	jne	.L18
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L18
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