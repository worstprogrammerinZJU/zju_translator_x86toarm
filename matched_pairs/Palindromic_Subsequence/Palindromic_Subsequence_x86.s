	endbr64
	push	rbp
	mov	rbp, rsp
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, 0
	test	al, al
	je	.L5
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	jmp	.L6
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	strlen@PLT
	nop
	leave
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
n:
dp:
_Z7dpBuildB5cxx11:
vis:
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
	jle	.L9
	mov	eax, 0
	jmp	.L10
	mov	eax, DWORD PTR -84[rbp]
	cmp	eax, DWORD PTR -88[rbp]
	jne	.L11
	mov	eax, 1
	jmp	.L10
	mov	eax, DWORD PTR -88[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -84[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L12
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	jmp	.L10
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -44[rbp], 0
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
	je	.L13
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -84[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	add	eax, 2
	mov	DWORD PTR -36[rbp], eax
	jmp	.L14
	mov	eax, DWORD PTR -84[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -88[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -88[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -84[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	DWORD PTR -68[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	DWORD PTR -60[rbp], eax
	lea	rax, -68[rbp]
	mov	r12, rax
	mov	r13d, 3
	mov	rcx, r12
	mov	rbx, r13
	mov	rax, r12
	mov	rdx, r13
	mov	rax, rdx
	mov	rdi, rcx
	mov	rsi, rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	add	rsp, 72
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
_Z5buildB5cxx11ii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 248
	mov	QWORD PTR -248[rbp], rdi
	mov	DWORD PTR -252[rbp], esi
	mov	DWORD PTR -256[rbp], edx
	mov	eax, DWORD PTR -252[rbp]
	cmp	eax, DWORD PTR -256[rbp]
	jle	.L16
	lea	rax, -195[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -195[rbp]
	mov	rax, QWORD PTR -248[rbp]
	lea	rcx, .LC4[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -195[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L15
	mov	eax, DWORD PTR -252[rbp]
	cmp	eax, DWORD PTR -256[rbp]
	jne	.L18
	lea	rax, -194[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	mov	eax, DWORD PTR -252[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	lea	rcx, -194[rbp]
	mov	rax, QWORD PTR -248[rbp]
	mov	esi, 1
	mov	rdi, rax
	lea	rax, -194[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	jmp	.L15
	mov	eax, DWORD PTR -256[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -252[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rdx, rax
	lea	rax, vis[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L19
	mov	eax, DWORD PTR -256[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -252[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rax, rdx
	sal	rax, 5
	mov	rdx, rax
	add	rdx, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L15
	mov	eax, DWORD PTR -256[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -252[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rdx, rax
	lea	rax, vis[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -256[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -252[rbp]
	cdqe
	imul	rax, rax, 1005
	add	rax, rdx
	sal	rax, 5
	mov	rdx, rax
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	edx, DWORD PTR -256[rbp]
	mov	eax, DWORD PTR -252[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	DWORD PTR -28[rbp], eax
	lea	rax, -193[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	lea	rdx, -193[rbp]
	lea	rax, -240[rbp]
	lea	rcx, .LC5[rip]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -193[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	eax, DWORD PTR -252[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -256[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L20
	mov	eax, DWORD PTR -256[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -252[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	add	eax, 2
	cmp	DWORD PTR -28[rbp], eax
	jne	.L20
	mov	eax, 1
	jmp	.L21
	mov	eax, 0
	test	al, al
	je	.L22
	mov	eax, DWORD PTR -256[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	ebx, al
	mov	eax, DWORD PTR -256[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -252[rbp]
	lea	ecx, 1[rax]
	lea	rax, -128[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	_Z5buildB5cxx11ii
	mov	eax, DWORD PTR -252[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	movsx	ecx, al
	lea	rax, -160[rbp]
	lea	rdx, -128[rbp]
	mov	esi, ecx
	mov	rdi, rax
	lea	rax, -192[rbp]
	lea	rcx, -160[rbp]
	mov	edx, ebx
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -192[rbp]
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -192[rbp]
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -252[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -256[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	cmp	DWORD PTR -28[rbp], eax
	sete	al
	test	al, al
	je	.L23
	mov	eax, DWORD PTR -252[rbp]
	lea	ecx, 1[rax]
	lea	rax, -96[rbp]
	mov	edx, DWORD PTR -256[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	_Z5buildB5cxx11ii
	lea	rdx, -96[rbp]
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR -256[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -252[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	cmp	DWORD PTR -28[rbp], eax
	sete	al
	test	al, al
	je	.L24
	mov	eax, DWORD PTR -256[rbp]
	lea	edx, -1[rax]
	lea	rax, -64[rbp]
	mov	ecx, DWORD PTR -252[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	_Z5buildB5cxx11ii
	lea	rdx, -64[rbp]
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -240[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	lea	rdx, -240[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -240[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	call	_Z5setupv
	jmp	.L27
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	mov	DWORD PTR n[rip], eax
	mov	edx, 4040100
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 1010025
	mov	esi, 0
	lea	rax, vis[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR n[rip]
	sub	eax, 1
	mov	esi, eax
	mov	edi, 0
	call	_Z3solii
	mov	eax, DWORD PTR n[rip]
	lea	edx, -1[rax]
	lea	rax, -32[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	_Z5buildB5cxx11ii
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	sub	rdx, 24
	mov	rdx, QWORD PTR [rdx]
	add	rax, rdx
	mov	rdi, rax
	test	al, al
	jne	.L28
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	movzx	edx, BYTE PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	dl, al
	sete	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L33
	add	QWORD PTR -8[rbp], 1
	mov	BYTE PTR -9[rbp], 0
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	lea	rax, -9[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	xor	eax, 1
	test	al, al
	jne	.L34
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, edx
	mov	QWORD PTR -48[rbp], rcx
	mov	BYTE PTR -36[rbp], al
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	movsx	edx, BYTE PTR -36[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	cmp	QWORD PTR -48[rbp], 0
	je	.L38
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	add	rax, rdx
	jmp	.L39
	mov	eax, 1
	mov	QWORD PTR -24[rbp], rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, esi
	mov	QWORD PTR -24[rbp], rdx
	mov	BYTE PTR -12[rbp], al
	movsx	edx, BYTE PTR -12[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	ecx, edx
	mov	edx, 1
	mov	esi, 0
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, rax
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
	mov	eax, edx
	mov	BYTE PTR -20[rbp], al
	movsx	edx, BYTE PTR -20[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	esi, 1
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, rax
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
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	je	.L49
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L50
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
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
	mov	rdi, rax
	test	al, al
	je	.L54
	mov	rax, QWORD PTR -32[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	je	.L54
	mov	eax, 1
	jmp	.L55
	mov	eax, 0
	test	al, al
	je	.L56
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, 15
	jbe	.L57
	lea	rcx, -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	shr	eax, 31
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	sete	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -8[rbp]
	pop	rbp
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
	jne	.L77
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L78
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L79
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	lea	rax, -33[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	test	al, al
	je	.L79
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	setne	al
	test	al, al
	jne	.L80
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
__tcf_0:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	lea	rbx, 32320800[rax]
	cmp	rbx, rax
	je	.L81
	sub	rbx, 32
	mov	rdi, rbx
	jmp	.L83
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 16
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	cmp	DWORD PTR -36[rbp], 1
	jne	.L90
	cmp	DWORD PTR -40[rbp], 65535
	jne	.L90
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
	mov	ebx, 1004
	mov	r13, rax
	jmp	.L86
	mov	r14, r13
	mov	r12d, 1004
	jmp	.L87
	mov	rdi, r14
	add	r14, 32
	sub	r12, 1
	test	r12, r12
	jns	.L88
	add	r13, 32160
	sub	rbx, 1
	test	rbx, rbx
	jns	.L89
	mov	rdx, rax
	mov	esi, 0
	lea	rax, __tcf_0[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	add	rsp, 16
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
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