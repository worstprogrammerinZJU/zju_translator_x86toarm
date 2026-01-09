	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
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
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	and	rax, rdx
	test	rax, rax
	setne	al
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, esi
	mov	BYTE PTR -12[rbp], al
	cmp	BYTE PTR -12[rbp], 0
	je	.L12
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	or	rdx, rcx
	mov	QWORD PTR [rax], rdx
	jmp	.L13
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	not	rax
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	and	rdx, rcx
	mov	QWORD PTR [rax], rdx
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
	movzx	edx, al
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt14_Bit_referenceaSEb
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	DWORD PTR 8[rax], edx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	lea	ecx, 1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rdx], ecx
	cmp	eax, 63
	sete	al
	test	al, al
	je	.L20
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	lea	ecx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rdx], ecx
	test	eax, eax
	sete	al
	test	al, al
	je	.L23
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], 63
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	mov	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 63[rax]
	test	rax, rax
	cmovs	rax, rdx
	sar	rax, 6
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	cqo
	shr	rdx, 58
	add	rax, rdx
	and	eax, 63
	sub	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jns	.L25
	add	QWORD PTR -8[rbp], 64
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 8[rax], edx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	mov	eax, eax
	add	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 8[rax]
	mov	ecx, eax
	mov	rax, rdx
	sub	rax, rcx
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	esi, 0
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
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	mov	edx, 1
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratordeEv
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorpLEl
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR 8[rdx]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR [rcx]
	mov	rsi, rcx
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	edx, DWORD PTR 8[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	mov	edx, 1
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -16[rbp]
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
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -48[rbp], edx
	mov	eax, ecx
	mov	BYTE PTR -52[rbp], al
	mov	eax, DWORD PTR -44[rbp]
	mov	rdx, -1
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	eax, 64
	sub	eax, DWORD PTR -48[rbp]
	mov	rdx, -1
	mov	ecx, eax
	shr	rdx, cl
	mov	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	and	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR -24[rbp], rax
	cmp	BYTE PTR -52[rbp], 0
	je	.L51
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	or	rax, QWORD PTR -24[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	jmp	.L53
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	not	rax
	and	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	rax, rdx
	mov	rdx, rcx
	mov	QWORD PTR -56[rbp], r8
	mov	QWORD PTR -32[rbp], rdi
	mov	QWORD PTR -24[rbp], rsi
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -48[rbp]
	cmp	rdx, rax
	je	.L55
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -24[rbp]
	test	eax, eax
	je	.L56
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	esi, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, 8[rax]
	mov	QWORD PTR -8[rbp], rcx
	mov	ecx, edx
	mov	edx, 64
	mov	rdi, rax
	call	_ZSt14__fill_bvectorPmjjb
	mov	rax, QWORD PTR -48[rbp]
	sub	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L57
	mov	ecx, -1
	jmp	.L58
	mov	ecx, 0
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -40[rbp]
	test	eax, eax
	je	.L60
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	ecx, al
	mov	edx, DWORD PTR -40[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	_ZSt14__fill_bvectorPmjjb
	jmp	.L60
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	je	.L60
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	ecx, al
	mov	edx, DWORD PTR -40[rbp]
	mov	esi, DWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt14__fill_bvectorPmjjb
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
n:
r:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaIiED2Ev
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
	nop
	leave
	ret
arr:
tmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaImED2Ev
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
	nop
	leave
	ret
vis:
_Z3solv:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	lea	rax, tmp[rip]
	mov	rdi, rax
	mov	edx, DWORD PTR r[rip]
	movsx	rdx, edx
	cmp	rax, rdx
	sete	al
	test	al, al
	je	.L69
	lea	rax, tmp[rip]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	QWORD PTR -104[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	QWORD PTR -112[rbp], rax
	jmp	.L70
	lea	rax, -104[rbp]
	mov	rdi, rax
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC4[rip]
	mov	rsi, rax
	mov	rdi, rdx
	lea	rax, -104[rbp]
	mov	rdi, rax
	lea	rdx, -112[rbp]
	lea	rax, -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L71
	mov	esi, 10
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	jmp	.L68
	mov	DWORD PTR -4[rbp], 0
	jmp	.L73
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	lea	rax, -96[rbp]
	mov	rdi, rax
	xor	eax, 1
	test	al, al
	je	.L74
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	lea	rax, -80[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt14_Bit_referenceaSEb
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -52[rbp], eax
	lea	rax, -52[rbp]
	mov	rsi, rax
	lea	rax, tmp[rip]
	mov	rdi, rax
	call	_Z3solv
	lea	rax, tmp[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	lea	rax, -48[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	_ZNSt14_Bit_referenceaSEb
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L75
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
	lea	rax, r[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	edx, 0
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	call	_Z3solv
	mov	eax, 0
	pop	rbp
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
	jnb	.L79
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L80
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
_ZNSaImED2Ev:
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
	mov	rdi, rax
	call	_ZNSaIiEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
_ZNSaIiED2Ev:
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
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 2
	mov	rdx, rax
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaImEC2Ev
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
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 2
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 8[rax]
	lea	rax, -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
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
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	cmp	rbx, rax
	setne	al
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rdx, QWORD PTR -32[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratorixEl
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
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, -4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	test	al, al
	je	.L106
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, rcx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L108
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -16[rbp], rax
	setb	al
	test	al, al
	je	.L108
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 2
	add	rdx, rax
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
	sub	rsp, 120
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	eax, edx
	mov	BYTE PTR -116[rbp], al
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -112[rbp], rax
	setb	al
	test	al, al
	je	.L110
	mov	rbx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	lea	rax, -96[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	jmp	.L112
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -112[rbp]
	sub	rax, rdx
	mov	rbx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	lea	rdx, -32[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rcx, -116[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	r8, rcx
	mov	rcx, rbx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
_ZNSaImEC2Ev:
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
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
_ZNSaIiEC2Ev:
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L120
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorC1Ev
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 16
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorC1Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], 0
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L124
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rdx]
	sub	rax, rdx
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 32[rax]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	nop
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
	nop
	pop	rbp
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
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L133
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 4[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L134
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
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
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	cmp	QWORD PTR -48[rbp], 0
	je	.L144
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 2
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -8[rbp], rax
	ja	.L139
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	sub	rax, QWORD PTR -8[rbp]
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L140
	mov	eax, 1
	jmp	.L141
	mov	eax, 0
	test	al, al
	mov	rax, QWORD PTR -16[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jb	.L143
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rcx, QWORD PTR -48[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rdx], rax
	jmp	.L144
	mov	rcx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	sar	rdx, 2
	mov	rsi, rdx
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -48[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -32[rbp]
	sar	rax, 2
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L147
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	lea	rdx, -32[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rcx, rsi
	mov	rax, rdx
	mov	QWORD PTR -24[rbp], rcx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR 24[rax], edx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 152
	mov	QWORD PTR -104[rbp], rdi
	mov	rax, rdx
	mov	QWORD PTR -128[rbp], rcx
	mov	QWORD PTR -136[rbp], r8
	mov	QWORD PTR -120[rbp], rsi
	mov	QWORD PTR -112[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	lea	rdx, -96[rbp]
	lea	rax, -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	ebx, al
	lea	rax, -120[rbp]
	mov	rdi, rax
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -128[rbp]
	mov	rsi, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	r8d, ebx
	mov	rdi, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR -8[rbp]
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rax]
	test	rax, rax
	je	.L160
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rax]
	sub	rax, 8
	mov	rdi, rax
	add	rax, 8
	jmp	.L161
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR -72[rbp], rdi
	lea	rax, -64[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rbx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR -48[rbp]
	mov	rbx, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 32[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
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
	sub	rsp, 104
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	rax, QWORD PTR -88[rbp]
	lea	rdx, .LC6[rip]
	mov	esi, 1
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	QWORD PTR -72[rbp], rax
	lea	rdx, -72[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], 0
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	rsi, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	add	QWORD PTR -64[rbp], 4
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -32[rbp]
	sar	rdx, 2
	mov	rcx, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	lea	rax, -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rdi, rax
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -48[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L175
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jb	.L176
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L177
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	jmp	.L178
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L181
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L183
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	lea	rdx, 16[rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -16[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 280
	mov	QWORD PTR -248[rbp], rdi
	mov	rax, rdx
	mov	QWORD PTR -272[rbp], rcx
	mov	edx, r8d
	mov	QWORD PTR -264[rbp], rsi
	mov	QWORD PTR -256[rbp], rax
	mov	eax, edx
	mov	BYTE PTR -276[rbp], al
	cmp	QWORD PTR -272[rbp], 0
	je	.L197
	mov	rax, QWORD PTR -248[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, rbx
	sub	rax, rdx
	cmp	QWORD PTR -272[rbp], rax
	setbe	al
	test	al, al
	je	.L196
	mov	rax, QWORD PTR -272[rbp]
	mov	rdx, QWORD PTR -248[rbp]
	add	rdx, 16
	mov	rsi, rax
	mov	rdi, rdx
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], rdx
	mov	rax, QWORD PTR -248[rbp]
	mov	rdi, rax
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], rdx
	mov	rcx, QWORD PTR -176[rbp]
	mov	rbx, QWORD PTR -168[rbp]
	mov	rax, QWORD PTR -160[rbp]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rdi, QWORD PTR -264[rbp]
	mov	rsi, QWORD PTR -256[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -192[rbp], rax
	mov	QWORD PTR -184[rbp], rdx
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -264[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], rdx
	lea	rcx, -276[rbp]
	mov	rax, QWORD PTR -144[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	mov	rdi, QWORD PTR -264[rbp]
	mov	rsi, QWORD PTR -256[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -272[rbp]
	mov	rdx, QWORD PTR -248[rbp]
	add	rdx, 16
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt13_Bit_iteratorpLEl
	jmp	.L193
	mov	rcx, QWORD PTR -272[rbp]
	mov	rax, QWORD PTR -248[rbp]
	lea	rdx, .LC7[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -208[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -264[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	lea	rdx, -96[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, QWORD PTR -128[rbp]
	mov	rdi, QWORD PTR -120[rbp]
	mov	rsi, QWORD PTR -112[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -248[rbp]
	push	QWORD PTR -200[rbp]
	push	QWORD PTR -208[rbp]
	mov	r8, rdi
	mov	rdi, rax
	add	rsp, 16
	mov	QWORD PTR -224[rbp], rax
	mov	QWORD PTR -216[rbp], rdx
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	lea	rcx, -276[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rdi, QWORD PTR -224[rbp]
	mov	rsi, QWORD PTR -216[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rdx, rax
	mov	rdx, QWORD PTR -272[rbp]
	lea	rax, -224[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -248[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rcx, QWORD PTR -64[rbp]
	mov	rbx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rdi, QWORD PTR -264[rbp]
	mov	rsi, QWORD PTR -256[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -240[rbp], rax
	mov	QWORD PTR -232[rbp], rdx
	mov	rax, QWORD PTR -248[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -32[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -248[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -248[rbp]
	mov	rdx, QWORD PTR -208[rbp]
	mov	QWORD PTR [rax], rdx
	mov	edx, DWORD PTR -200[rbp]
	mov	DWORD PTR 8[rax], edx
	mov	rax, QWORD PTR -248[rbp]
	mov	rdx, QWORD PTR -240[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, DWORD PTR -232[rbp]
	mov	DWORD PTR 24[rax], edx
	jmp	.L193
	nop
	mov	rbx, QWORD PTR -8[rbp]
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 0[0+rax*4]
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
	mov	ebx, DWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 4
	call	_ZnwmPv
	mov	DWORD PTR [rax], ebx
	nop
	mov	rbx, QWORD PTR -8[rbp]
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
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 2
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 2
	neg	rax
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	lea	rdx, -8[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	movabs	rax, 2305843009213693951
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
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
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -16[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	lea	rdx, -32[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 120
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -80[rbp], rdi
	mov	QWORD PTR -72[rbp], rsi
	mov	QWORD PTR -96[rbp], rcx
	mov	QWORD PTR -88[rbp], rbx
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -112[rbp]
	mov	rbx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rdi, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, rdx
	mov	rdx, rcx
	mov	QWORD PTR -40[rbp], r8
	mov	QWORD PTR -16[rbp], rdi
	mov	QWORD PTR -8[rbp], rsi
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR -16[rbp]
	mov	rsi, QWORD PTR -8[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rdx, rax
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -48[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L226
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	lea	rdx, -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jb	.L227
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L228
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	jmp	.L229
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 136
	mov	QWORD PTR -88[rbp], rdi
	mov	rax, rcx
	mov	rcx, r8
	mov	QWORD PTR -104[rbp], rsi
	mov	QWORD PTR -96[rbp], rdx
	mov	QWORD PTR -120[rbp], rax
	mov	QWORD PTR -112[rbp], rcx
	mov	rdx, QWORD PTR 16[rbp]
	mov	rcx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rcx, QWORD PTR -24[rbp]
	lea	rax, -64[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rcx, QWORD PTR -120[rbp]
	lea	rax, -48[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rcx, QWORD PTR -64[rbp]
	mov	rbx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 120
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -80[rbp], rdi
	mov	QWORD PTR -72[rbp], rsi
	mov	QWORD PTR -96[rbp], rcx
	mov	QWORD PTR -88[rbp], rbx
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -112[rbp]
	mov	rbx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rdi, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 63
	shr	rax, 6
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	cmp	QWORD PTR -32[rbp], 0
	je	.L244
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 2305843009213693951
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
	je	.L249
	movabs	rax, 4611686018427387903
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L250
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 2
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
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
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	mov	rdx, r12
	mov	rsi, rbx
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
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
	mov	rdx, rdi
	mov	rax, rsi
	mov	QWORD PTR -32[rbp], rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 152
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -112[rbp], rdi
	mov	QWORD PTR -104[rbp], rsi
	mov	QWORD PTR -128[rbp], rcx
	mov	QWORD PTR -120[rbp], rbx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], rdx
	mov	rdx, QWORD PTR -144[rbp]
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rdx, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rdx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	rax, rdx
	mov	rdx, rcx
	mov	QWORD PTR -40[rbp], r8
	mov	QWORD PTR -16[rbp], rdi
	mov	QWORD PTR -8[rbp], rsi
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdi, QWORD PTR -16[rbp]
	mov	rsi, QWORD PTR -8[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rdx, rax
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	movabs	rax, 9223372036854775744
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	movabs	rax, 144115188075855871
	cmp	QWORD PTR -16[rbp], rax
	ja	.L261
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 6
	jmp	.L263
	movabs	rax, 9223372036854775744
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
	sub	rsp, 120
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -80[rbp], rdi
	mov	QWORD PTR -72[rbp], rsi
	mov	QWORD PTR -96[rbp], rcx
	mov	QWORD PTR -88[rbp], rbx
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	mov	rdx, QWORD PTR -96[rbp]
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -112[rbp]
	mov	rbx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rdi, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 152
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -112[rbp], rdi
	mov	QWORD PTR -104[rbp], rsi
	mov	QWORD PTR -128[rbp], rcx
	mov	QWORD PTR -120[rbp], rbx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], rdx
	mov	rdx, QWORD PTR -144[rbp]
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rdx, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rdx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 4
	call	_ZnwmPv
	mov	DWORD PTR [rax], 0
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
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 2
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jle	.L280
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	rdx, rdi
	mov	rax, rsi
	mov	QWORD PTR -32[rbp], rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -48[rbp], rdi
	mov	QWORD PTR -40[rbp], rsi
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	rcx, rsi
	mov	rax, rdx
	mov	QWORD PTR -40[rbp], rcx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
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
	je	.L295
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L296
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
	mov	rdx, rdi
	mov	rax, rsi
	mov	QWORD PTR -32[rbp], rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 152
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -112[rbp], rdi
	mov	QWORD PTR -104[rbp], rsi
	mov	QWORD PTR -128[rbp], rcx
	mov	QWORD PTR -120[rbp], rbx
	mov	QWORD PTR -144[rbp], rax
	mov	QWORD PTR -136[rbp], rdx
	mov	rdx, QWORD PTR -144[rbp]
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rdx, QWORD PTR -128[rbp]
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rdx, QWORD PTR -112[rbp]
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR -96[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -48[rbp], rdi
	mov	QWORD PTR -40[rbp], rsi
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	cmp	QWORD PTR -16[rbp], 0
	jne	.L311
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L312
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -48[rbp], rdi
	mov	QWORD PTR -40[rbp], rsi
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
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
	mov	rdx, rdi
	mov	rax, rsi
	mov	QWORD PTR -32[rbp], rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -48[rbp], rdi
	mov	QWORD PTR -40[rbp], rsi
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -48[rbp], rdi
	mov	QWORD PTR -40[rbp], rsi
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
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
	push	rbx
	sub	rsp, 136
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -96[rbp], rdi
	mov	QWORD PTR -88[rbp], rsi
	mov	QWORD PTR -112[rbp], rcx
	mov	QWORD PTR -104[rbp], rbx
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], rdx
	lea	rdx, -96[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	jmp	.L331
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratormmEv
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratordeEv
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	lea	rax, -128[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratormmEv
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratordeEv
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	lea	rdx, -80[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	sub	QWORD PTR -24[rbp], 1
	cmp	QWORD PTR -24[rbp], 0
	jg	.L332
	mov	rax, QWORD PTR -128[rbp]
	mov	rdx, QWORD PTR -120[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
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
	push	rbx
	sub	rsp, 88
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -48[rbp], rdi
	mov	QWORD PTR -40[rbp], rsi
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rcx, QWORD PTR -80[rbp]
	mov	rbx, QWORD PTR -72[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, QWORD PTR -48[rbp]
	mov	rsi, QWORD PTR -40[rbp]
	mov	r8, rcx
	mov	r9, rbx
	mov	rcx, rdx
	mov	rdx, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 136
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -96[rbp], rdi
	mov	QWORD PTR -88[rbp], rsi
	mov	QWORD PTR -112[rbp], rcx
	mov	QWORD PTR -104[rbp], rbx
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], rdx
	lea	rdx, -96[rbp]
	lea	rax, -112[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	jmp	.L339
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratordeEv
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	lea	rax, -128[rbp]
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratordeEv
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	lea	rdx, -80[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorppEv
	lea	rax, -128[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorppEv
	sub	QWORD PTR -24[rbp], 1
	cmp	QWORD PTR -24[rbp], 0
	jg	.L340
	mov	rax, QWORD PTR -128[rbp]
	mov	rdx, QWORD PTR -120[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L343
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR [rax], edx
	add	QWORD PTR -24[rbp], 4
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -32[rbp]
	jne	.L344
	nop
	nop
	pop	rbp
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
	je	.L346
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
	push	rbx
	sub	rsp, 120
	mov	rbx, rcx
	mov	rcx, rdx
	mov	rax, r8
	mov	rdx, r9
	mov	QWORD PTR -80[rbp], rdi
	mov	QWORD PTR -72[rbp], rsi
	mov	QWORD PTR -96[rbp], rcx
	mov	QWORD PTR -88[rbp], rbx
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	lea	rdx, -80[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	jmp	.L349
	lea	rax, -80[rbp]
	mov	rdi, rax
	movzx	ebx, al
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratordeEv
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	lea	rax, -64[rbp]
	mov	esi, ebx
	mov	rdi, rax
	call	_ZNSt14_Bit_referenceaSEb
	lea	rax, -80[rbp]
	mov	rdi, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorppEv
	sub	QWORD PTR -24[rbp], 1
	cmp	QWORD PTR -24[rbp], 0
	jg	.L350
	mov	rax, QWORD PTR -112[rbp]
	mov	rdx, QWORD PTR -104[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L354
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L354
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIiSaIiEEC1Ev
	mov	rdx, rax
	lea	rax, arr[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, tmp[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIiSaIiEEC1Ev
	mov	rdx, rax
	lea	rax, tmp[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, vis[rip]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEEC1Ev
	mov	rdx, rax
	lea	rax, vis[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
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
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
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
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: