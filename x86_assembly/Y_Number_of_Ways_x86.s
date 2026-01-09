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
ans:
dp:
_Z3soli:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L3
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	jmp	.L4
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -20[rbp], eax
	jne	.L5
	mov	eax, 1
	jmp	.L4
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -20[rbp], eax
	jle	.L6
	mov	eax, 0
	jmp	.L4
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	mov	edx, DWORD PTR -20[rbp]
	lea	ebx, 1[rdx]
	mov	edi, eax
	call	_Z3soli
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, dp[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 2
	mov	edx, DWORD PTR -20[rbp]
	lea	ebx, 2[rdx]
	mov	edi, eax
	call	_Z3soli
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, dp[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 3
	mov	edx, DWORD PTR -20[rbp]
	lea	ebx, 3[rdx]
	mov	edi, eax
	call	_Z3soli
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, dp[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 2
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 3
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	eax, ecx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	call	_Z5setupv
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
	mov	edx, 20000
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR n[rip]
	mov	edi, eax
	call	_Z3soli
	mov	DWORD PTR ans[rip], eax
	mov	eax, DWORD PTR ans[rip]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
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
	jne	.L11
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L11
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