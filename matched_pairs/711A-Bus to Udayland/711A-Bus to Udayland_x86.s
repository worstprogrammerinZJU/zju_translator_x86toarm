main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 96
	mov	rax, rsp
	mov	r14, rax
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	mov	edi, 0
	lea	rax, -68[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	BYTE PTR -33[rbp], 0
	mov	ebx, DWORD PTR -68[rbp]
	movsx	rax, ebx
	sub	rax, 1
	mov	QWORD PTR -56[rbp], rax
	movsx	rax, ebx
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR -120[rbp], 0
	movsx	rax, ebx
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, ebx
	sal	rax, 5
	mov	rdx, rax
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ecx, 16
	mov	edx, 0
	div	rcx
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L4
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 7
	shr	rax, 3
	sal	rax, 3
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -64[rbp]
	movsx	rdx, ebx
	lea	r12, -1[rdx]
	mov	r13, rax
	jmp	.L5
	mov	rdi, r13
	add	r13, 32
	sub	r12, 1
	test	r12, r12
	jns	.L6
	mov	DWORD PTR -40[rbp], 0
	jmp	.L7
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	movzx	eax, BYTE PTR -33[rbp]
	xor	eax, 1
	test	al, al
	je	.L8
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 0
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L9
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 1
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L9
	mov	eax, 1
	jmp	.L10
	mov	eax, 0
	test	al, al
	je	.L11
	mov	BYTE PTR -33[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 0
	mov	rdi, rax
	mov	BYTE PTR [rax], 43
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 1
	mov	rdi, rax
	mov	BYTE PTR [rax], 43
	jmp	.L8
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 3
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L12
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 4
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 79
	jne	.L12
	mov	eax, 1
	jmp	.L13
	mov	eax, 0
	test	al, al
	je	.L8
	mov	BYTE PTR -33[rbp], 1
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 3
	mov	rdi, rax
	mov	BYTE PTR [rax], 43
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	esi, 4
	mov	rdi, rax
	mov	BYTE PTR [rax], 43
	add	DWORD PTR -40[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -40[rbp], eax
	jl	.L14
	movzx	eax, BYTE PTR -33[rbp]
	xor	eax, 1
	test	al, al
	je	.L15
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	r12d, 0
	jmp	.L16
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	DWORD PTR -44[rbp], 0
	jmp	.L17
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	add	DWORD PTR -44[rbp], 1
	mov	eax, DWORD PTR -68[rbp]
	cmp	DWORD PTR -44[rbp], eax
	jl	.L18
	mov	r12d, 0
	movsx	rax, ebx
	sal	rax, 5
	mov	rdx, rax
	mov	rax, QWORD PTR -64[rbp]
	lea	rbx, [rdx+rax]
	cmp	QWORD PTR -64[rbp], rbx
	je	.L22
	sub	rbx, 32
	mov	rdi, rbx
	jmp	.L20
	nop
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	rsp, r14
	mov	eax, r12d
	lea	rsp, -32[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
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