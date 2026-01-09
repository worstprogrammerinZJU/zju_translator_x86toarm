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
b:
ss:
c:
pb:
ps:
pc:
cb:
cs:
cc:
k:
_Z3canx:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -88[rbp], rdi
	mov	rax, QWORD PTR cb[rip]
	imul	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR b[rip]
	sub	rax, rdx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], 0
	lea	rdx, -80[rbp]
	lea	rax, -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR cs[rip]
	imul	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR ss[rip]
	sub	rax, rdx
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], 0
	lea	rdx, -64[rbp]
	lea	rax, -56[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR cc[rip]
	imul	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR c[rip]
	sub	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], 0
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR pb[rip]
	imul	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR ps[rip]
	imul	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR pc[rip]
	imul	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR k[rip]
	cmp	QWORD PTR -32[rbp], rax
	setle	al
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	call	_Z5setupv
	lea	rax, _Z1sB5cxx11[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, b[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, ss[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, c[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, pb[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, ps[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, pc[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, k[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 66
	sete	al
	test	al, al
	je	.L6
	mov	rax, QWORD PTR cb[rip]
	add	rax, 1
	mov	QWORD PTR cb[rip], rax
	jmp	.L7
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	sete	al
	test	al, al
	je	.L8
	mov	rax, QWORD PTR cs[rip]
	add	rax, 1
	mov	QWORD PTR cs[rip], rax
	jmp	.L7
	mov	rax, QWORD PTR cc[rip]
	add	rax, 1
	mov	QWORD PTR cc[rip], rax
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L9
	mov	QWORD PTR -32[rbp], 0
	movabs	rax, 10000000000000
	mov	QWORD PTR -40[rbp], rax
	mov	QWORD PTR -48[rbp], 0
	jmp	.L10
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_Z3canx
	test	al, al
	je	.L11
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 1
	mov	QWORD PTR -32[rbp], rax
	jmp	.L10
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, 1
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jle	.L12
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	eax, 0
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L15
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L16
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L19
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L19
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