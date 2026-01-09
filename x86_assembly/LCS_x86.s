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
_Z1tB5cxx11:
n:
m:
dp:
_Z3solii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 48
	mov	DWORD PTR -68[rbp], edi
	mov	DWORD PTR -72[rbp], esi
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -68[rbp], eax
	je	.L5
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -72[rbp], eax
	jne	.L6
	mov	eax, 0
	jmp	.L7
	mov	eax, DWORD PTR -72[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L8
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	jmp	.L7
	mov	eax, DWORD PTR -68[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -72[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -68[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	DWORD PTR -48[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -68[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	r14d, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1tB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	sete	al
	movzx	eax, al
	add	eax, r14d
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -48[rbp]
	mov	DWORD PTR -60[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -56[rbp], eax
	lea	rax, -64[rbp]
	mov	r12, rax
	mov	r13d, 3
	mov	rcx, r12
	mov	rbx, r13
	mov	rax, r12
	mov	rdx, r13
	mov	rax, rdx
	mov	rdi, rcx
	mov	rsi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	ret
_Z5bulidii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 48
	mov	DWORD PTR -52[rbp], edi
	mov	DWORD PTR -56[rbp], esi
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -52[rbp], eax
	je	.L16
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -56[rbp], eax
	je	.L16
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	r12d, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1tB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	sete	al
	movzx	eax, al
	add	eax, r12d
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1tB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	sete	al
	test	al, al
	je	.L13
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z5bulidii
	jmp	.L9
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -28[rbp], eax
	jne	.L14
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -56[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z5bulidii
	jmp	.L9
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -32[rbp], eax
	jne	.L15
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z5bulidii
	jmp	.L9
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z5bulidii
	jmp	.L9
	nop
	add	rsp, 48
	pop	rbx
	pop	r12
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	call	_Z5setupv
	lea	rax, _Z1sB5cxx11[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _Z1tB5cxx11[rip]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	mov	DWORD PTR n[rip], eax
	lea	rax, _Z1tB5cxx11[rip]
	mov	rdi, rax
	mov	DWORD PTR m[rip], eax
	mov	edx, 100200100
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	esi, 0
	mov	edi, 0
	call	_Z3solii
	mov	esi, 0
	mov	edi, 0
	call	_Z5bulidii
	mov	eax, 0
	pop	rbp
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
	jne	.L32
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L33
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L34
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L34
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	jne	.L35
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
	jne	.L38
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L38
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
	lea	rax, _Z1tB5cxx11[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _Z1tB5cxx11[rip]
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