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
dp:
n:
m:
_Z3soliii:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 48
	mov	DWORD PTR -52[rbp], edi
	mov	DWORD PTR -56[rbp], esi
	mov	DWORD PTR -60[rbp], edx
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -52[rbp], eax
	jne	.L3
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -56[rbp], eax
	jne	.L3
	mov	eax, DWORD PTR -60[rbp]
	jmp	.L14
	mov	eax, DWORD PTR -60[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	imul	rsi, rax, 42025
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	add	rax, rsi
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	eax, -1
	je	.L5
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	jmp	.L14
	mov	DWORD PTR -36[rbp], 2147483647
	mov	DWORD PTR -40[rbp], 2147483647
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 40
	je	.L6
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1tB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 40
	jne	.L7
	mov	eax, 1
	jmp	.L8
	mov	eax, 0
	test	al, al
	je	.L9
	mov	eax, DWORD PTR -60[rbp]
	lea	r12d, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 40
	sete	al
	movzx	edx, al
	mov	eax, DWORD PTR -56[rbp]
	lea	ebx, [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 40
	sete	al
	movzx	edx, al
	mov	eax, DWORD PTR -52[rbp]
	add	eax, edx
	mov	edx, r12d
	mov	esi, ebx
	mov	edi, eax
	call	_Z3soliii
	add	eax, 1
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 41
	je	.L10
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1tB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 41
	jne	.L11
	mov	eax, 1
	jmp	.L12
	mov	eax, 0
	test	al, al
	je	.L13
	mov	DWORD PTR -32[rbp], 0
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, 1
	mov	DWORD PTR -28[rbp], eax
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	ebx, DWORD PTR [rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 41
	sete	al
	movzx	edx, al
	mov	eax, DWORD PTR -56[rbp]
	lea	r12d, [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, _Z1sB5cxx11[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 41
	sete	al
	movzx	edx, al
	mov	eax, DWORD PTR -52[rbp]
	add	eax, edx
	mov	edx, ebx
	mov	esi, r12d
	mov	edi, eax
	call	_Z3soliii
	lea	edx, 1[rax]
	cmp	DWORD PTR -60[rbp], 0
	sete	al
	movzx	eax, al
	add	eax, edx
	mov	DWORD PTR -40[rbp], eax
	lea	rdx, -40[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIiERKT_S2_S2_
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
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
	mov	edx, 34460500
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
	mov	eax, 0
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
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
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L21
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L22
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
	jne	.L25
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L25
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