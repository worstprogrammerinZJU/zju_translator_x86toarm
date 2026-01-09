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
	je	.L18
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
	jns	.L20
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
	mov	eax, 1
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
n:
m:
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
_Z3soliic:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	eax, edx
	mov	BYTE PTR -44[rbp], al
	cmp	DWORD PTR -36[rbp], 0
	js	.L51
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -36[rbp], eax
	jge	.L51
	cmp	DWORD PTR -40[rbp], 0
	js	.L51
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -40[rbp], eax
	jge	.L51
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	lea	rax, -32[rbp]
	mov	rdi, rax
	test	al, al
	jne	.L51
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIcSaIcEEixEm
	movzx	eax, BYTE PTR [rax]
	cmp	BYTE PTR -44[rbp], al
	je	.L52
	mov	eax, 1
	jmp	.L53
	mov	eax, 0
	test	al, al
	jne	.L56
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	lea	rax, -16[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt14_Bit_referenceaSEb
	movsx	edx, BYTE PTR -44[rbp]
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	_Z3soliic
	movsx	edx, BYTE PTR -44[rbp]
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	_Z3soliic
	movsx	edx, BYTE PTR -44[rbp]
	mov	eax, DWORD PTR -40[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	_Z3soliic
	movsx	edx, BYTE PTR -44[rbp]
	mov	eax, DWORD PTR -40[rbp]
	lea	ecx, -1[rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	_Z3soliic
	jmp	.L50
	nop
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
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
	lea	rax, -97[rbp]
	mov	rdi, rax
	call	_ZNSaIcEC1Ev@PLT
	mov	eax, DWORD PTR m[rip]
	movsx	rcx, eax
	lea	rdx, -97[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, -128[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEED1Ev
	lea	rax, -97[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	lea	rax, -49[rbp]
	mov	rdi, rax
	call	_ZNSaIbEC1Ev
	mov	eax, DWORD PTR m[rip]
	movsx	rcx, eax
	lea	rdx, -49[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, -96[rbp]
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEED1Ev
	lea	rax, -49[rbp]
	mov	rdi, rax
	call	_ZNSaIbED1Ev
	mov	DWORD PTR -4[rbp], 0
	jmp	.L58
	mov	DWORD PTR -8[rbp], 0
	jmp	.L59
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIcSaIcEEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L60
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L61
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L62
	mov	DWORD PTR -20[rbp], 0
	jmp	.L63
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, vis[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	lea	rax, -48[rbp]
	mov	rdi, rax
	xor	eax, 1
	test	al, al
	je	.L64
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	mov	rdx, rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSt6vectorIcSaIcEEixEm
	movzx	eax, BYTE PTR [rax]
	movsx	edx, al
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	_Z3soliic
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -20[rbp], 1
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L65
	add	DWORD PTR -16[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L66
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
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
	jnb	.L69
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L70
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -3689348814741910323
	imul	rax, rdx
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
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
	add	rax, rdx
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
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
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
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -32[rbp], rax
	seta	al
	test	al, al
	je	.L89
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, rdx
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rdx
	mov	rdx, rbx
	mov	rdi, rax
	jmp	.L91
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -32[rbp], rax
	setb	al
	test	al, al
	je	.L91
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
_ZNSaIbEC2Ev:
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
_ZNSaIbED2Ev:
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	BYTE PTR -1[rbp], 0
	mov	rcx, QWORD PTR -40[rbp]
	lea	rdx, -1[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
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
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -32[rbp], rax
	seta	al
	test	al, al
	je	.L97
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, rdx
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, rdx
	mov	rdx, rbx
	mov	rdi, rax
	jmp	.L99
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -32[rbp], rax
	setb	al
	test	al, al
	je	.L99
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -24[rbp]
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
_ZStneRKSaIcES1_:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	eax, 0
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
	mov	eax, 0
	pop	rbp
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
	je	.L115
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
	je	.L121
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
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -17[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC1ERKS_@PLT
	lea	rax, -17[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -17[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	test	bl, bl
	je	.L125
	lea	rax, .LC4[rip]
	mov	rdi, rax
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
	mov	rdi, rax
	call	_ZNSaIcED2Ev@PLT
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPcEvT_S1_
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
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 144
	mov	QWORD PTR -136[rbp], rdi
	mov	QWORD PTR -144[rbp], rsi
	mov	QWORD PTR -152[rbp], rdx
	mov	QWORD PTR -160[rbp], rcx
	cmp	QWORD PTR -152[rbp], 0
	je	.L141
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	cmp	QWORD PTR -152[rbp], rax
	ja	.L138
	mov	rdx, QWORD PTR -160[rbp]
	mov	rcx, QWORD PTR -136[rbp]
	lea	rax, -128[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -144[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	cmp	rax, QWORD PTR -152[rbp]
	jbe	.L139
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	r8, QWORD PTR 8[rax]
	mov	rcx, QWORD PTR -152[rbp]
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 3
	neg	rax
	add	rax, r8
	mov	rcx, rdi
	mov	rdi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rbx, [rdx+rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rbx, [rcx+rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	jmp	.L140
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -152[rbp]
	sub	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -136[rbp]
	mov	QWORD PTR 8[rdx], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rbx, QWORD PTR 8[rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR -72[rbp]
	mov	rcx, r12
	mov	rdx, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	QWORD PTR 8[rax], rdx
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -128[rbp]
	mov	rdi, rax
	jmp	.L141
	mov	rcx, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR -136[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	QWORD PTR -80[rbp], rax
	lea	rdx, -80[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	lea	rdi, [rdx+rax]
	mov	rdx, QWORD PTR -160[rbp]
	mov	rax, QWORD PTR -152[rbp]
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], 0
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -152[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rbx, QWORD PTR 8[rax]
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, r12
	mov	rsi, rbx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -136[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -136[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rcx, rdx
	sar	rcx, 3
	movabs	rdx, -6148914691236517205
	imul	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -136[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -136[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -136[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	add	rsp, 144
	pop	rbx
	pop	r12
	pop	rbp
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -32[rbp]
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L146
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
	mov	QWORD PTR -8[rbp], rdi
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
	mov	QWORD PTR -32[rbp], rcx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, edx
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
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -3689348814741910323
	imul	rax, rdx
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 160
	mov	QWORD PTR -152[rbp], rdi
	mov	QWORD PTR -160[rbp], rsi
	mov	QWORD PTR -168[rbp], rdx
	mov	QWORD PTR -176[rbp], rcx
	cmp	QWORD PTR -168[rbp], 0
	je	.L159
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -152[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -3689348814741910323
	imul	rax, rdx
	cmp	QWORD PTR -168[rbp], rax
	ja	.L156
	mov	rdx, QWORD PTR -176[rbp]
	mov	rcx, QWORD PTR -152[rbp]
	lea	rax, -144[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	QWORD PTR -88[rbp], rax
	lea	rdx, -160[rbp]
	lea	rax, -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	cmp	rax, QWORD PTR -168[rbp]
	jbe	.L157
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -152[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -152[rbp]
	mov	r8, QWORD PTR 8[rax]
	mov	rcx, QWORD PTR -168[rbp]
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 3
	neg	rax
	add	rax, r8
	mov	rcx, rdi
	mov	rdi, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -168[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -152[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR -168[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	neg	rax
	mov	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	lea	rbx, [rdx+rax]
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -168[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rbx, [rcx+rax]
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, rbx
	mov	rdi, rax
	jmp	.L158
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -168[rbp]
	sub	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -152[rbp]
	mov	QWORD PTR 8[rdx], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rbx, QWORD PTR 8[rax]
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rsi, QWORD PTR -72[rbp]
	mov	rcx, r12
	mov	rdx, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -152[rbp]
	mov	QWORD PTR 8[rax], rdx
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR -72[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rdi, rax
	jmp	.L159
	mov	rcx, QWORD PTR -168[rbp]
	mov	rax, QWORD PTR -152[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	QWORD PTR -80[rbp], rax
	lea	rdx, -80[rbp]
	lea	rax, -160[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	lea	rdi, [rdx+rax]
	mov	rdx, QWORD PTR -176[rbp]
	mov	rax, QWORD PTR -168[rbp]
	mov	rsi, rax
	mov	QWORD PTR -48[rbp], 0
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	rbx, rax
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rsi, QWORD PTR [rax]
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	rdx, QWORD PTR -168[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rbx, QWORD PTR 8[rax]
	lea	rax, -160[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rcx, r12
	mov	rsi, rbx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -152[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -152[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rcx, rdx
	sar	rcx, 3
	movabs	rdx, -3689348814741910323
	imul	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -152[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -152[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -152[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	add	rsp, 160
	pop	rbx
	pop	r12
	pop	rbp
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -32[rbp]
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -3689348814741910323
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L164
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC1ERKS_@PLT
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
	nop
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC2ERKS_@PLT
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
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
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
	cmp	QWORD PTR -16[rbp], 0
	je	.L183
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
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rbx
	mov	rsi, rcx
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
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
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
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rdx
	mov	rdx, rax
	mov	rsi, rbx
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
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
	je	.L205
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
	jb	.L206
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L207
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	jmp	.L208
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L213
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L215
	mov	eax, 0
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
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rdx
	mov	rdx, rax
	mov	rsi, rbx
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
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rbx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -17[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaImEC1IbEERKSaIT_E
	lea	rax, -17[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	lea	rax, -17[rbp]
	mov	rdi, rax
	call	_ZNSaImED1Ev
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	cmp	QWORD PTR -64[rbp], 0
	je	.L223
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -8[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -48[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR [rax], rdx
	mov	edx, DWORD PTR -40[rbp]
	mov	DWORD PTR 8[rax], edx
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, DWORD PTR -24[rbp]
	mov	DWORD PTR 24[rax], edx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	eax, esi
	mov	BYTE PTR -28[rbp], al
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L228
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	sub	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	cmp	BYTE PTR -28[rbp], 0
	je	.L226
	mov	ecx, -1
	jmp	.L227
	mov	ecx, 0
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	memset@PLT
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
	je	.L231
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
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rbx
	mov	rsi, rcx
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
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -3689348814741910323
	imul	rax, rdx
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
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rdx
	mov	rdx, rax
	mov	rsi, rbx
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
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
	je	.L250
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
	jb	.L251
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -24[rbp], rax
	jbe	.L252
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	jmp	.L253
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L258
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L260
	mov	eax, 0
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
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, rdx
	mov	rdx, rax
	mov	rsi, rbx
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
	mov	rdx, QWORD PTR -24[rbp]
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
	movabs	rax, 9223372036854775807
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
	je	.L272
	mov	rax, QWORD PTR -16[rbp]
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
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
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
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L282
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L284
	mov	eax, 0
	leave
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaImEC2ERKS_
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 63
	shr	rax, 6
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rax]
	test	rax, rax
	je	.L321
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rax]
	sub	rax, 8
	mov	rdi, rax
	add	rax, 8
	jmp	.L322
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	lea	rax, -24[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
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
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	cmp	QWORD PTR -32[rbp], 0
	je	.L355
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	add	QWORD PTR -24[rbp], 1
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
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 24
	call	_ZnwmPv
	mov	rsi, rbx
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEED1Ev
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
	lea	rax, -16[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
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
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
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
	jmp	.L371
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	QWORD PTR -8[rbp], 24
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L372
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
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L374
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	sub	QWORD PTR -32[rbp], 1
	add	QWORD PTR -8[rbp], 24
	cmp	QWORD PTR -32[rbp], 0
	jne	.L375
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	movabs	rax, 384307168202282325
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
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 384307168202282325
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
	je	.L384
	movabs	rax, 768614336404564650
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L385
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	jmp	.L388
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdi, rax
	add	QWORD PTR -8[rbp], 24
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L389
	nop
	nop
	leave
	ret
_ZNSaImEC2ERKS_:
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 40
	call	_ZnwmPv
	mov	rsi, rbx
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEED1Ev
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
	lea	rax, -16[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	eax, 1
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
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
	jmp	.L410
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	add	QWORD PTR -8[rbp], 40
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L411
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
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	jmp	.L413
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	sub	QWORD PTR -32[rbp], 1
	add	QWORD PTR -8[rbp], 40
	cmp	QWORD PTR -32[rbp], 0
	jne	.L414
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	movabs	rax, 230584300921369395
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
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 230584300921369395
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
	je	.L423
	movabs	rax, 461168601842738790
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L424
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	jmp	.L427
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rdi, rax
	add	QWORD PTR -8[rbp], 40
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L428
	nop
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 1
	call	_ZnwmPv
	mov	BYTE PTR [rax], 0
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
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rbx, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -33[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rcx, rax
	lea	rax, -33[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	lea	rax, -33[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r13, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rcx, r13
	mov	rdx, rbx
	mov	rsi, r12
	mov	rdi, rax
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, 24[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L436
	lea	rax, -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	add	QWORD PTR -24[rbp], 24
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L437
	mov	rax, QWORD PTR -24[rbp]
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
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 32
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR -64[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	je	.L442
	test	al, al
	je	.L443
	xor	eax, 1
	test	al, al
	je	.L444
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZStneRKSaIcES1_
	test	al, al
	je	.L444
	mov	eax, 1
	jmp	.L445
	mov	eax, 0
	test	al, al
	je	.L446
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -40[rbp], rax
	seta	al
	test	al, al
	je	.L447
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rsi, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L448
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	cmp	QWORD PTR -40[rbp], rax
	setbe	al
	test	al, al
	je	.L449
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r12, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r14, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	r13, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rdx, r14
	mov	rsi, r13
	mov	rdi, rax
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	jmp	.L448
	mov	rax, QWORD PTR -56[rbp]
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	r12, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	lea	rcx, [r12+rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	r13, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	r12, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rbx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	r14, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	add	rax, r14
	mov	rcx, r13
	mov	rdx, r12
	mov	rsi, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -56[rbp]
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
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
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	edi, 24
	call	_ZnwmPv
	mov	rsi, rbx
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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEED1Ev
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
	je	.L461
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L462
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
	push	rbx
	sub	rsp, 104
	mov	QWORD PTR -104[rbp], rdi
	mov	QWORD PTR -112[rbp], rsi
	mov	rbx, QWORD PTR -104[rbp]
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, -81[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -81[rbp]
	lea	rax, -82[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIbEC1ImEERKSaIT_E
	lea	rax, -82[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	lea	rax, -82[rbp]
	mov	rdi, rax
	call	_ZNSaIbED1Ev
	lea	rax, -81[rbp]
	mov	rdi, rax
	call	_ZNSaImED1Ev
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -112[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdi, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -104[rbp]
	push	QWORD PTR -56[rbp]
	push	QWORD PTR -64[rbp]
	mov	r8, rdi
	mov	rdi, rax
	add	rsp, 16
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
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
	lea	rdx, 40[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L468
	lea	rax, -40[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	lea	rax, -40[rbp]
	mov	rdi, rax
	add	QWORD PTR -24[rbp], 40
	lea	rdx, -48[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	test	al, al
	jne	.L469
	mov	rax, QWORD PTR -24[rbp]
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
	mov	eax, 0
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 88
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	rax, QWORD PTR -96[rbp]
	cmp	rax, QWORD PTR -88[rbp]
	jne	.L476
	mov	rax, QWORD PTR -88[rbp]
	jmp	.L477
	test	al, al
	je	.L478
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZStneRKSaImES1_
	test	al, al
	je	.L479
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	jmp	.L478
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	seta	al
	test	al, al
	je	.L480
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -96[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rcx, QWORD PTR -48[rbp]
	mov	rdi, QWORD PTR -40[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -88[rbp]
	push	QWORD PTR -56[rbp]
	push	QWORD PTR -64[rbp]
	mov	r8, rdi
	mov	rdi, rax
	add	rsp, 16
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, DWORD PTR -72[rbp]
	mov	DWORD PTR 24[rax], edx
	mov	rax, QWORD PTR -88[rbp]
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	edi, 40
	call	_ZnwmPv
	mov	rsi, rbx
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
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEED1Ev
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
	cmp	QWORD PTR -16[rbp], 0
	jne	.L488
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L489
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
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
	mov	rdx, QWORD PTR -16[rbp]
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
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	edi, 24
	call	_ZnwmPv
	mov	rsi, rbx
	mov	rdi, rax
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
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	jmp	.L508
	sub	QWORD PTR -32[rbp], 24
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	sub	QWORD PTR -40[rbp], 24
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	sub	QWORD PTR -8[rbp], 1
	cmp	QWORD PTR -8[rbp], 0
	jg	.L509
	mov	rax, QWORD PTR -40[rbp]
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
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -8[rbp]
	leave
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
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
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
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
	mov	rdx, QWORD PTR -16[rbp]
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
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	edi, 40
	call	_ZnwmPv
	mov	rsi, rbx
	mov	rdi, rax
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
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -3689348814741910323
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	jmp	.L550
	sub	QWORD PTR -32[rbp], 40
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	sub	QWORD PTR -40[rbp], 40
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	sub	QWORD PTR -8[rbp], 1
	cmp	QWORD PTR -8[rbp], 0
	jg	.L551
	mov	rax, QWORD PTR -40[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
_ZStneRKSaImES1_:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	eax, 0
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
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
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	sete	al
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC2ERKS_@PLT
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	BYTE PTR -1[rbp], 1
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
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
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L579
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
	mov	rax, QWORD PTR -40[rbp]
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaImEC1ERKS_
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
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	sete	al
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaImEC2ERKS_
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
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
	sub	rsp, 120
	mov	QWORD PTR -120[rbp], rdi
	mov	QWORD PTR -128[rbp], rsi
	test	al, al
	jne	.L608
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	call	_ZSteqRKSaImES1_
	test	al, al
	je	.L609
	mov	eax, 1
	jmp	.L610
	mov	eax, 0
	test	al, al
	je	.L611
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	rbx, QWORD PTR -120[rbp]
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	jmp	.L612
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	cmp	rbx, rax
	seta	al
	test	al, al
	je	.L613
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -120[rbp]
	mov	rdi, rax
	mov	QWORD PTR -96[rbp], rax
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	QWORD PTR -64[rbp], rax
	mov	QWORD PTR -56[rbp], rdx
	lea	rdx, -64[rbp]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	lea	rdx, -32[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rcx, QWORD PTR -80[rbp]
	mov	rdi, QWORD PTR -72[rbp]
	mov	rsi, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -120[rbp]
	push	QWORD PTR -88[rbp]
	push	QWORD PTR -96[rbp]
	mov	r8, rdi
	mov	rdi, rax
	add	rsp, 16
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	mov	rax, QWORD PTR -120[rbp]
	mov	rdx, QWORD PTR -112[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, DWORD PTR -104[rbp]
	mov	DWORD PTR 24[rax], edx
	mov	rax, QWORD PTR -128[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR -120[rbp]
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
	mov	rax, QWORD PTR -40[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR -1[rbp], al
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	je	.L617
	movzx	eax, BYTE PTR -1[rbp]
	movzx	ecx, al
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	memset@PLT
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
	mov	QWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rdx, QWORD PTR -56[rbp]
	lea	rax, -17[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -17[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rax, -17[rbp]
	mov	rdi, rax
	call	_ZNSaIcED1Ev@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdi, rax
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdi, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIcSaIcEED1Ev
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	lea	rax, -8[rbp]
	mov	rdi, rax
	mov	rax, QWORD PTR [rax]
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, rcx
	mov	rdx, rax
	lea	rax, -8[rbp]
	mov	rsi, rdx
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
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rbx, QWORD PTR 8[rdx]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR 16[rdx]
	mov	rbx, QWORD PTR 24[rdx]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rdx, QWORD PTR 32[rdx]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
_ZSteqRKSaImES1_:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	eax, 1
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rbx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	mov	rsi, rax
	mov	rdi, rbx
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	nop
	leave
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
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	rcx, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	nop
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaIcEC1ERKS_@PLT
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
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	lea	rax, -32[rbp]
	mov	rdi, rax
	mov	rdx, QWORD PTR -40[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	lea	rdx, -32[rbp]
	mov	rax, QWORD PTR -48[rbp]
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
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
	push	rbx
	sub	rsp, 24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rbx, QWORD PTR 8[rdx]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR 16[rdx]
	mov	rbx, QWORD PTR 24[rdx]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rdx, QWORD PTR 32[rdx]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
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
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
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
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L698
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
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
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L705
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
	jmp	.L708
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
	jg	.L709
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
	jne	.L713
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L713
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, arr[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, arr[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, vis[rip]
	mov	rdi, rax
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
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: