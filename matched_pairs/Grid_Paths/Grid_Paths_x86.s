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
_ZL1N:
arr:
dp:
mod:
n:
_Z3solxx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR n[rip]
	cmp	QWORD PTR -24[rbp], rax
	jge	.L3
	mov	rax, QWORD PTR n[rip]
	cmp	QWORD PTR -32[rbp], rax
	jge	.L3
	mov	rax, QWORD PTR -24[rbp]
	imul	rdx, rax, 1009
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	lea	rax, arr[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 42
	jne	.L4
	mov	eax, 0
	jmp	.L5
	mov	rax, QWORD PTR n[rip]
	sub	rax, 1
	cmp	QWORD PTR -24[rbp], rax
	jne	.L6
	mov	rax, QWORD PTR n[rip]
	sub	rax, 1
	cmp	QWORD PTR -32[rbp], rax
	jne	.L6
	mov	eax, 1
	jmp	.L5
	mov	rax, QWORD PTR -24[rbp]
	imul	rdx, rax, 1009
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	cmp	rax, -1
	je	.L7
	mov	rax, QWORD PTR -24[rbp]
	imul	rdx, rax, 1009
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	jmp	.L5
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_Z3solxx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z3solxx
	mov	QWORD PTR -16[rbp], rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	mov	rcx, QWORD PTR mod[rip]
	cqo
	idiv	rcx
	mov	rcx, rdx
	mov	rax, QWORD PTR -24[rbp]
	imul	rdx, rax, 1009
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	QWORD PTR [rdx+rax], rcx
	mov	rax, QWORD PTR -24[rbp]
	imul	rdx, rax, 1009
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	mov	rax, QWORD PTR [rdx+rax]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	_Z5setupv
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
	mov	DWORD PTR -8[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	imul	rax, rax, 1009
	add	rdx, rax
	lea	rax, arr[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR n[rip]
	cmp	rdx, rax
	jl	.L11
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR n[rip]
	cmp	rdx, rax
	jl	.L12
	mov	edx, 8144648
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	esi, 0
	mov	edi, 0
	call	_Z3solxx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
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