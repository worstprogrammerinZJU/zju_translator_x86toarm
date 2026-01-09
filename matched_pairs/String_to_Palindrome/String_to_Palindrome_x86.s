	endbr64
	push	rbp
	mov	rbp, rsp
	nop
	pop	rbp
	ret
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
_Z1sB5cxx11:
dp:
_Z3solii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 72
	mov	DWORD PTR -84[rbp], edi
	mov	DWORD PTR -88[rbp], esi
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, DWORD PTR -88[rbp]
	jl	.L5
	mov	eax, 0
	jmp	.L6
	mov	eax, DWORD PTR -88[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L7
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	jmp	.L6
	mov	DWORD PTR -36[rbp], 1000000000
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -88[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	sete	al
	test	al, al
	je	.L8
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -84[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -84[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	add	eax, 1
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -84[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -88[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	add	eax, 1
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -84[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	add	eax, 1
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -80[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -76[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	mov	DWORD PTR -72[rbp], eax
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR -68[rbp], eax
	lea	rax, -80[rbp]
	mov	r12, rax
	mov	r13d, 4
	mov	rcx, r12
	mov	rbx, r13
	mov	rax, r12
	mov	rdx, r13
	mov	rax, rdx
	mov	rdi, rcx
	mov	rsi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	add	rsp, 72
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	call	_Z5setupv
	mov	DWORD PTR -20[rbp], 1
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L10
	lea	rax, _Z1sB5cxx11[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	edx, 4040100
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	rcx, rax
	mov	eax, DWORD PTR -20[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -20[rbp], edx
	mov	esi, eax
	mov	rdi, rcx
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rbx, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	sub	eax, 1
	mov	esi, eax
	mov	edi, 0
	call	_Z3solii
	mov	esi, eax
	mov	rdi, rbx
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -24[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -24[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L11
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	rax, rdi
	mov	rcx, rsi
	mov	rdx, rcx
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	sal	rax, 2
	add	rax, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	setl	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L26
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L27
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L28
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L28
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	jne	.L29
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L32
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L32
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _Z1sB5cxx11[rip]
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