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
_Z1aB5cxx11:
_Z1bB5cxx11:
_Z1cB5cxx11:
dp:
_Z3soliii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -44[rbp], edx
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 2005
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L3
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	jmp	.L12
	mov	eax, DWORD PTR -44[rbp]
	movsx	rbx, eax
	lea	rax, _Z1cB5cxx11[rip]
	mov	rdi, rax
	cmp	rbx, rax
	sete	al
	test	al, al
	je	.L5
	mov	eax, 0
	jmp	.L12
	mov	DWORD PTR -28[rbp], 2147483647
	mov	DWORD PTR -32[rbp], 2147483647
	mov	eax, DWORD PTR -36[rbp]
	movsx	rbx, eax
	lea	rax, _Z1aB5cxx11[rip]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	je	.L6
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1aB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1cB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L7
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	_Z3soliii
	jmp	.L8
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	mov	edi, ecx
	call	_Z3soliii
	add	eax, 1
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	movsx	rbx, eax
	lea	rax, _Z1bB5cxx11[rip]
	mov	rdi, rax
	cmp	rbx, rax
	setb	al
	test	al, al
	je	.L9
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1bB5cxx11[rip]
	mov	rdi, rax
	movzx	ebx, BYTE PTR [rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1cB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	bl, al
	jne	.L10
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	_Z3soliii
	jmp	.L11
	mov	eax, DWORD PTR -44[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	_Z3soliii
	add	eax, 1
	mov	DWORD PTR -32[rbp], eax
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	call	_Z5setupv
	lea	rax, -4[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L14
	lea	rax, _Z1aB5cxx11[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _Z1bB5cxx11[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	rdx, rax
	lea	rax, _Z1cB5cxx11[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	edx, 16080100
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 0
	mov	esi, 0
	mov	edi, 0
	call	_Z3soliii
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
	jne	.L15
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L18
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L19
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
	jne	.L22
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L22
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, _Z1aB5cxx11[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _Z1aB5cxx11[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, _Z1bB5cxx11[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _Z1bB5cxx11[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, _Z1cB5cxx11[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _Z1cB5cxx11[rip]
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