_ZSt4__lgl:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	bsr	rax, rax
	xor	rax, 63
	mov	edx, eax
	mov	eax, 63
	sub	eax, edx
	cdqe
	pop	rbp
	ret
_ZnwmPv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jnb	.L6
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L7
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 511
	ja	.L9
	mov	eax, 512
	mov	edx, 0
	div	QWORD PTR -8[rbp]
	jmp	.L11
	mov	eax, 1
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L13
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L14
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
_ZL3INF:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 224
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -116[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -208[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEEC1Ev
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
	lea	rax, -216[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	lea	rdx, -216[rbp]
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -116[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	lea	rax, -112[rbp]
	lea	rdx, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -80[rbp]
	lea	rdx, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -112[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	BYTE PTR -25[rbp], 0
	mov	DWORD PTR -32[rbp], 0
	jmp	.L19
	xor	BYTE PTR -25[rbp], 1
	cmp	BYTE PTR -25[rbp], 0
	je	.L20
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	add	QWORD PTR -16[rbp], rax
	lea	rax, -208[rbp]
	mov	rdi, rax
	jmp	.L21
	lea	rax, -208[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	add	QWORD PTR -24[rbp], rax
	lea	rax, -208[rbp]
	mov	rdi, rax
	add	DWORD PTR -32[rbp], 1
	mov	eax, DWORD PTR -116[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jl	.L22
	mov	rax, QWORD PTR -16[rbp]
	imul	rax, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	imul	rax, rax
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	lea	rax, -208[rbp]
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEED1Ev
	mov	eax, 0
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
	jnb	.L25
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L26
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIxED2Ev
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 0
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L30
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 40[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -88[rbp], rdi
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -80[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -48[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -80[rbp]
	lea	rsi, -48[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 64[rax]
	sub	rax, 8
	cmp	rdx, rax
	je	.L33
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 48[rax], rdx
	jmp	.L35
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 48[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	lea	rax, -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 32[rax]
	sub	rax, 8
	cmp	rdx, rax
	je	.L44
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L46
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	lea	rax, -32[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt5dequeIxSaIxEE3endEv
	lea	rax, -32[rbp]
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 56[rax]
	cmp	rdx, rax
	je	.L50
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 48[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	jmp	.L52
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIxEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
_ZNSaIxED2Ev:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	edi, 8
	mov	rbx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, 0
	div	rbx
	add	rax, 1
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 2
	mov	QWORD PTR -56[rbp], rax
	mov	QWORD PTR -48[rbp], 8
	lea	rdx, -56[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -24[rbp]
	shr	rax
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -40[rbp]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rbx, QWORD PTR 56[rax]
	mov	edi, 8
	mov	rcx, rax
	mov	rax, QWORD PTR -80[rbp]
	mov	edx, 0
	div	rcx
	mov	rcx, rdx
	mov	rax, rcx
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 48[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L57
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	QWORD PTR -8[rbp], 8
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jb	.L58
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	lea	rax, -1[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	lea	rax, -1[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -1[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	QWORD PTR -96[rbp], rcx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L65
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, 1
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	lea	rbx, 8[rdx]
	mov	rdi, rax
	mov	QWORD PTR [rbx], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	add	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 56[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	lea	rax, -33[rbp]
	mov	rdi, rax
	lea	rax, -17[rbp]
	mov	rdi, rax
	nop
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 168
	mov	QWORD PTR -152[rbp], rdi
	mov	QWORD PTR -160[rbp], rsi
	mov	rdx, QWORD PTR -160[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L71
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdi, rax
	call	_ZSt4__lgl
	lea	rbx, [rax+rax]
	mov	rdx, QWORD PTR -160[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -152[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -144[rbp]
	lea	rax, -112[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -160[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -152[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rdx]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 16
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 40[rdx]
	add	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	cmp	rdx, rax
	jne	.L77
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 56[rdx]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 72[rdx]
	sub	rdx, 8
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 64[rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 48[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 48[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
_ZNSaIxEC2Ev:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 16
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	lea	rax, -17[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -17[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rbx, rax
	nop
	lea	rax, -17[rbp]
	mov	rdi, rax
	call	_ZNSaIPxED1Ev
	mov	rax, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L86
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	add	QWORD PTR -8[rbp], 8
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jb	.L87
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR 8[rax]
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	edi, 8
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIPxEC1IxEERKSaIT_E
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
_ZNSaIPxED2Ev:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	QWORD PTR [rax], rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 48
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	lea	rsi, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 72[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, QWORD PTR [rax]
	mov	rax, rcx
	sub	rax, rdi
	sar	rax, 3
	mov	rcx, rax
	mov	rax, rdx
	sub	rax, rcx
	cmp	rsi, rax
	jbe	.L103
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	edi, 8
	mov	rdx, rax
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
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -9[rbp]
	mov	rdi, rax
	nop
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
	xor	eax, 1
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rsi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR 24[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	test	rax, rax
	setne	al
	movzx	edx, al
	mov	rax, rcx
	sub	rax, rdx
	imul	rsi, rax
	mov	rcx, rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rsi
	sar	rax, 3
	lea	rsi, [rcx+rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	add	rax, rsi
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 288
	mov	QWORD PTR -264[rbp], rdi
	mov	QWORD PTR -272[rbp], rsi
	mov	QWORD PTR -280[rbp], rdx
	jmp	.L114
	cmp	QWORD PTR -280[rbp], 0
	jne	.L115
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -264[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -224[rbp]
	lea	rcx, -192[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	jmp	.L113
	sub	QWORD PTR -280[rbp], 1
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -264[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -256[rbp]
	lea	rdx, -128[rbp]
	lea	rcx, -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -256[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -280[rbp]
	lea	rcx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rcx, QWORD PTR -272[rbp]
	mov	rax, QWORD PTR -256[rbp]
	mov	rdx, QWORD PTR -248[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -240[rbp]
	mov	rdx, QWORD PTR -232[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	mov	rdx, QWORD PTR -264[rbp]
	mov	rax, QWORD PTR -272[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 16
	setg	al
	test	al, al
	jne	.L117
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 224
	mov	QWORD PTR -200[rbp], rdi
	mov	QWORD PTR -208[rbp], rsi
	mov	rdx, QWORD PTR -200[rbp]
	mov	rax, QWORD PTR -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 16
	setg	al
	test	al, al
	je	.L119
	lea	rax, -192[rbp]
	mov	rcx, QWORD PTR -200[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -192[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rcx, QWORD PTR -200[rbp]
	mov	edx, 16
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -128[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L121
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -200[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 24[rax], 0
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	edi, 8
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	movabs	rax, 9223372036854775807
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	eax, edx
	mov	BYTE PTR -84[rbp], al
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 72[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR 40[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	add	rax, 1
	mov	QWORD PTR -32[rbp], rax
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -40[rbp]
	add	rdx, rdx
	cmp	rax, rdx
	jbe	.L139
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rcx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L140
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L141
	mov	eax, 0
	add	rax, rcx
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	cmp	QWORD PTR -24[rbp], rax
	jnb	.L142
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	jmp	.L143
	mov	rax, QWORD PTR -32[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rsi, rcx
	mov	rdi, rax
	jmp	.L143
	mov	rax, QWORD PTR -72[rbp]
	mov	rbx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 8[rax]
	lea	rax, -80[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZSt3maxImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	add	rax, 2
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	sub	rax, QWORD PTR -40[rbp]
	shr	rax
	lea	rdx, 0[0+rax*8]
	cmp	BYTE PTR -84[rbp], 0
	je	.L144
	mov	rax, QWORD PTR -80[rbp]
	sal	rax, 3
	jmp	.L145
	mov	eax, 0
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 72[rax]
	lea	rcx, 8[rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR 40[rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR 8[rdx]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rax, QWORD PTR -72[rbp]
	add	rax, 48
	mov	rdx, QWORD PTR -32[rbp]
	sal	rdx, 3
	lea	rcx, -8[rdx]
	mov	rdx, QWORD PTR -24[rbp]
	add	rdx, rcx
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
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
	sete	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 192
	mov	QWORD PTR -168[rbp], rdi
	mov	QWORD PTR -176[rbp], rsi
	mov	QWORD PTR -184[rbp], rdx
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -176[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -168[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -160[rbp]
	lea	rcx, -128[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -176[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -168[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -185[rbp]
	lea	rcx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 288
	mov	QWORD PTR -264[rbp], rdi
	mov	QWORD PTR -272[rbp], rsi
	mov	QWORD PTR -280[rbp], rdx
	mov	rdx, QWORD PTR -272[rbp]
	mov	rax, QWORD PTR -280[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	rdx, rax
	lea	rax, -256[rbp]
	mov	rcx, QWORD PTR -272[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -224[rbp]
	mov	rcx, QWORD PTR -280[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -256[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rcx, QWORD PTR -272[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -224[rbp]
	lea	rdx, -192[rbp]
	lea	rsi, -160[rbp]
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -280[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rcx, QWORD PTR -272[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -264[rbp]
	lea	rcx, -96[rbp]
	lea	rdx, -64[rbp]
	lea	rsi, -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -264[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 312
	mov	QWORD PTR -296[rbp], rdi
	mov	QWORD PTR -304[rbp], rsi
	mov	rdx, QWORD PTR -304[rbp]
	mov	rax, QWORD PTR -296[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L162
	lea	rax, -288[rbp]
	mov	rcx, QWORD PTR -296[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	jmp	.L158
	mov	rdx, QWORD PTR -296[rbp]
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -288[rbp]
	lea	rax, -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -240[rbp]
	lea	rcx, -208[rbp]
	lea	rax, -305[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L159
	lea	rax, -288[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -248[rbp], rax
	lea	rax, -144[rbp]
	lea	rcx, -288[rbp]
	mov	edx, 1
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -288[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -296[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -176[rbp]
	lea	rcx, -144[rbp]
	lea	rdx, -112[rbp]
	lea	rsi, -80[rbp]
	mov	rdi, rax
	lea	rax, -248[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -296[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	jmp	.L160
	lea	rdx, -288[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	lea	rax, -288[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -304[rbp]
	lea	rax, -288[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L161
	jmp	.L155
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 96
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L164
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L165
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L169
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L170
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L184
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L185
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 288
	mov	QWORD PTR -264[rbp], rdi
	mov	QWORD PTR -272[rbp], rsi
	mov	QWORD PTR -280[rbp], rdx
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -264[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -281[rbp]
	lea	rcx, -224[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -256[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L188
	mov	rdx, QWORD PTR -264[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -256[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -160[rbp]
	lea	rcx, -128[rbp]
	lea	rax, -281[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L189
	lea	rdx, -256[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -264[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -281[rbp]
	lea	rdx, -96[rbp]
	lea	rsi, -64[rbp]
	lea	rax, -32[rbp]
	mov	rdi, rax
	lea	rax, -256[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -280[rbp]
	lea	rax, -256[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L190
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	QWORD PTR -120[rbp], rdx
	jmp	.L192
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, QWORD PTR -120[rbp]
	lea	rdx, -96[rbp]
	lea	rsi, -64[rbp]
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 1
	setg	al
	test	al, al
	jne	.L193
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 752
	mov	QWORD PTR -712[rbp], rdi
	mov	QWORD PTR -720[rbp], rsi
	mov	QWORD PTR -728[rbp], rdx
	mov	QWORD PTR -736[rbp], rcx
	mov	rdx, QWORD PTR -728[rbp]
	lea	rax, -704[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -720[rbp]
	lea	rax, -672[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -704[rbp]
	lea	rcx, -672[rbp]
	lea	rax, -737[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L197
	mov	rdx, QWORD PTR -736[rbp]
	lea	rax, -640[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -728[rbp]
	lea	rax, -608[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -640[rbp]
	lea	rcx, -608[rbp]
	lea	rax, -737[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L198
	mov	rdx, QWORD PTR -728[rbp]
	lea	rax, -576[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -712[rbp]
	lea	rax, -544[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -576[rbp]
	lea	rax, -544[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L203
	mov	rdx, QWORD PTR -736[rbp]
	lea	rax, -512[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -720[rbp]
	lea	rax, -480[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -512[rbp]
	lea	rcx, -480[rbp]
	lea	rax, -737[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L200
	mov	rdx, QWORD PTR -736[rbp]
	lea	rax, -448[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -712[rbp]
	lea	rax, -416[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -448[rbp]
	lea	rax, -416[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L203
	mov	rdx, QWORD PTR -720[rbp]
	lea	rax, -384[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -712[rbp]
	lea	rax, -352[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -384[rbp]
	lea	rax, -352[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L203
	mov	rdx, QWORD PTR -736[rbp]
	lea	rax, -320[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -720[rbp]
	lea	rax, -288[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -320[rbp]
	lea	rcx, -288[rbp]
	lea	rax, -737[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L201
	mov	rdx, QWORD PTR -720[rbp]
	lea	rax, -256[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -712[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -256[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L203
	mov	rdx, QWORD PTR -736[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -728[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -192[rbp]
	lea	rcx, -160[rbp]
	lea	rax, -737[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L202
	mov	rdx, QWORD PTR -736[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -712[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -128[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L203
	mov	rdx, QWORD PTR -728[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -712[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 240
	mov	QWORD PTR -200[rbp], rdi
	mov	QWORD PTR -208[rbp], rsi
	mov	QWORD PTR -216[rbp], rdx
	mov	QWORD PTR -224[rbp], rcx
	jmp	.L205
	mov	rax, QWORD PTR -208[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -224[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -192[rbp]
	lea	rcx, -160[rbp]
	lea	rax, -225[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	jne	.L206
	mov	rax, QWORD PTR -216[rbp]
	mov	rdi, rax
	jmp	.L207
	mov	rax, QWORD PTR -216[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -216[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -224[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -128[rbp]
	lea	rcx, -96[rbp]
	lea	rax, -225[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	jne	.L208
	mov	rdx, QWORD PTR -216[rbp]
	mov	rax, QWORD PTR -208[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	xor	eax, 1
	test	al, al
	je	.L209
	mov	rdx, QWORD PTR -208[rbp]
	mov	rax, QWORD PTR -200[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L212
	mov	rdx, QWORD PTR -216[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -208[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -64[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -208[rbp]
	mov	rdi, rax
	jmp	.L205
	mov	rax, QWORD PTR -200[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	js	.L214
	cmp	QWORD PTR -24[rbp], rax
	jge	.L214
	mov	eax, 1
	jmp	.L215
	mov	eax, 0
	test	al, al
	je	.L216
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L217
	cmp	QWORD PTR -24[rbp], 0
	jle	.L218
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	cqo
	idiv	rcx
	jmp	.L219
	mov	rax, QWORD PTR -24[rbp]
	not	rax
	mov	rbx, rax
	mov	rsi, rax
	mov	rax, rbx
	mov	edx, 0
	div	rsi
	not	rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 3
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR 8[rax]
	imul	rax, QWORD PTR -32[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, rdx
	sal	rax, 3
	lea	rdx, [rbx+rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	jne	.L222
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 24[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -20[rbp], eax
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 192
	mov	QWORD PTR -168[rbp], rdi
	mov	QWORD PTR -176[rbp], rsi
	mov	QWORD PTR -184[rbp], rdx
	mov	QWORD PTR -192[rbp], rcx
	mov	rdx, QWORD PTR -192[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -184[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -128[rbp]
	lea	rdx, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -176[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -64[rbp]
	lea	rdx, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -168[rbp]
	lea	rcx, -160[rbp]
	lea	rdx, -128[rbp]
	lea	rsi, -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -168[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	lea	rax, -33[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -17[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	eax, ebx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -104[rbp], rdi
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rdx, QWORD PTR -104[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	jmp	.L233
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	mov	rcx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	lea	rax, -96[rbp]
	mov	rdi, rax
	lea	rdx, -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -48[rbp]
	lea	rcx, -56[rbp]
	lea	rax, -105[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	jne	.L234
	lea	rax, -56[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 136
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	mov	QWORD PTR -136[rbp], rdx
	mov	rdx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	cmp	rax, 1
	setle	al
	test	al, al
	jne	.L248
	mov	rdx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -24[rbp], rax
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -104[rbp], rax
	lea	rax, -104[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	lea	rax, -64[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], 0
	je	.L249
	sub	QWORD PTR -24[rbp], 1
	jmp	.L247
	nop
	jmp	.L243
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	jne	.L251
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	setb	al
	jmp	.L253
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	setb	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 80
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	QWORD PTR -96[rbp], rcx
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	lea	rax, -56[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	r12, rax
	mov	rdx, QWORD PTR -72[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rcx, rbx
	mov	rdx, r12
	mov	esi, 0
	mov	rdi, rax
	nop
	add	rsp, 80
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
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
	setg	al
	pop	rbp
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
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 256
	mov	QWORD PTR -232[rbp], rdi
	mov	QWORD PTR -240[rbp], rsi
	mov	QWORD PTR -248[rbp], rdx
	mov	QWORD PTR -256[rbp], rcx
	mov	rdx, QWORD PTR -256[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -192[rbp]
	lea	rdx, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -248[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -128[rbp]
	lea	rdx, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -240[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -64[rbp]
	lea	rdx, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -224[rbp]
	lea	rcx, -192[rbp]
	lea	rdx, -128[rbp]
	lea	rsi, -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -232[rbp]
	lea	rdx, -224[rbp]
	mov	rcx, QWORD PTR -256[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -232[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -20[rbp], eax
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 312
	mov	QWORD PTR -280[rbp], rdi
	mov	QWORD PTR -288[rbp], rsi
	mov	QWORD PTR -296[rbp], rdx
	mov	QWORD PTR -304[rbp], rcx
	mov	rax, QWORD PTR -288[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -288[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L278
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -1[rax]
	lea	rax, -256[rbp]
	mov	rcx, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -224[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -256[rbp]
	lea	rcx, -224[rbp]
	lea	rax, -305[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L279
	sub	QWORD PTR -24[rbp], 1
	lea	rax, -192[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -192[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	lea	rax, -160[rbp]
	mov	rdx, QWORD PTR -288[rbp]
	mov	rcx, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -288[rbp], rax
	mov	rax, QWORD PTR -296[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -24[rbp], rax
	jl	.L280
	mov	rax, QWORD PTR -296[rbp]
	and	eax, 1
	test	rax, rax
	jne	.L281
	mov	rax, QWORD PTR -296[rbp]
	sub	rax, 2
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	cmp	QWORD PTR -24[rbp], rax
	jne	.L281
	mov	rax, QWORD PTR -24[rbp]
	add	rax, 1
	add	rax, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, -1[rax]
	lea	rax, -128[rbp]
	mov	rcx, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -288[rbp]
	mov	rcx, QWORD PTR -280[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, 1
	mov	QWORD PTR -288[rbp], rax
	lea	rax, -305[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -257[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -304[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -280[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -257[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -288[rbp]
	lea	rax, -64[rbp]
	mov	r8, rcx
	mov	rcx, rbx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	nop
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
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	QWORD PTR -120[rbp], rdx
	mov	QWORD PTR -128[rbp], rcx
	mov	rdx, QWORD PTR -128[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -120[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -112[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -104[rbp]
	lea	rcx, -96[rbp]
	lea	rdx, -64[rbp]
	lea	rsi, -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -104[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 200
	mov	QWORD PTR -168[rbp], rdi
	mov	QWORD PTR -176[rbp], rsi
	mov	QWORD PTR -184[rbp], rdx
	mov	QWORD PTR -192[rbp], rcx
	mov	QWORD PTR -200[rbp], r8
	mov	rax, QWORD PTR -176[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -24[rbp], rax
	jmp	.L295
	lea	rax, -160[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -168[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	lea	rax, -128[rbp]
	mov	rdx, QWORD PTR -176[rbp]
	mov	rcx, QWORD PTR -168[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -176[rbp], rax
	mov	rax, QWORD PTR -176[rbp]
	sub	rax, 1
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -176[rbp]
	cmp	rax, QWORD PTR -184[rbp]
	jle	.L296
	lea	rax, -96[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -168[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -192[rbp]
	lea	rcx, -96[rbp]
	mov	rax, QWORD PTR -200[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L296
	mov	eax, 1
	jmp	.L297
	mov	eax, 0
	test	al, al
	jne	.L298
	lea	rax, -192[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	lea	rax, -64[rbp]
	mov	rdx, QWORD PTR -176[rbp]
	mov	rcx, QWORD PTR -168[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	QWORD PTR [rax], rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 248
	mov	QWORD PTR -232[rbp], rdi
	mov	QWORD PTR -240[rbp], rsi
	mov	QWORD PTR -248[rbp], rdx
	mov	QWORD PTR -256[rbp], rcx
	mov	rax, QWORD PTR -240[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR -248[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	rdx, rax
	je	.L300
	mov	rdx, QWORD PTR -256[rbp]
	lea	rax, -192[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -248[rbp]
	mov	rsi, QWORD PTR 8[rax]
	lea	rax, -224[rbp]
	lea	rcx, -192[rbp]
	mov	rdi, rax
	mov	rcx, QWORD PTR -256[rbp]
	mov	rax, QWORD PTR -224[rbp]
	mov	rdx, QWORD PTR -216[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -208[rbp]
	mov	rdx, QWORD PTR -200[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	mov	rax, QWORD PTR -248[rbp]
	mov	rax, QWORD PTR 24[rax]
	sub	rax, 8
	mov	QWORD PTR -24[rbp], rax
	jmp	.L301
	mov	rdx, QWORD PTR -256[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR [rax]
	sal	rax, 3
	lea	rdi, [rbx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR [rax]
	lea	rax, -160[rbp]
	lea	rdx, -128[rbp]
	mov	rcx, rdx
	mov	rdx, rdi
	mov	rdi, rax
	mov	rcx, QWORD PTR -256[rbp]
	mov	rax, QWORD PTR -160[rbp]
	mov	rdx, QWORD PTR -152[rbp]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR -144[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	mov	QWORD PTR 16[rcx], rax
	mov	QWORD PTR 24[rcx], rdx
	sub	QWORD PTR -24[rbp], 8
	mov	rax, QWORD PTR -240[rbp]
	mov	rax, QWORD PTR 24[rax]
	cmp	QWORD PTR -24[rbp], rax
	jne	.L302
	mov	rdx, QWORD PTR -256[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -240[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -240[rbp]
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -232[rbp]
	lea	rcx, -96[rbp]
	mov	rdi, rax
	jmp	.L299
	mov	rdx, QWORD PTR -256[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -240[rbp]
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -232[rbp]
	lea	rcx, -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -232[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L305
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L308
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memmove@PLT
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rbx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -24[rbp], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	DWORD PTR -20[rbp], eax
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR -48[rbp]
	sar	rax, 3
	mov	QWORD PTR -24[rbp], rax
	jmp	.L313
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	test	rax, rax
	jne	.L314
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR 24[rax]
	sub	rax, 8
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 3
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -32[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIlERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	neg	rax
	add	QWORD PTR -56[rbp], rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	test	rax, rax
	jg	.L315
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L322
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	memmove@PLT
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L326
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L326
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