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
mem:
vis1:
vis2:
dp:
_Z5isPalii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jl	.L3
	mov	eax, 1
	jmp	.L4
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rdx, rax
	lea	rax, mem[rip]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rdx, rax
	lea	rax, vis1[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L5
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	jmp	.L4
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rdx, rax
	lea	rax, vis1[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L6
	mov	eax, DWORD PTR -40[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z5isPalii
	test	al, al
	je	.L6
	mov	edx, 1
	jmp	.L7
	mov	edx, 0
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR [rax], dl
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
_Z3solii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -40[rbp]
	jle	.L9
	mov	eax, 0
	jmp	.L10
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rdx, rax
	lea	rax, vis2[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L11
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	jmp	.L10
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rdx, rax
	lea	rax, vis2[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -36[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3solii
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, 1
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	DWORD PTR -28[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	sub	eax, DWORD PTR -28[rbp]
	mov	ebx, eax
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z5isPalii
	movzx	eax, al
	lea	ecx, [rbx+rax]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 5005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	_Z5setupv
	lea	rax, _Z1sB5cxx11[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L13
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -12[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -12[rbp], eax
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3solii
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	esi, 10
	mov	rdi, rax
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -4[rbp], edx
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