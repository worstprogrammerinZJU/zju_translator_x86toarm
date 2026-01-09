_ZL3INF:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 168
	mov	edi, 0
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	lea	rax, -108[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L2
	mov	rax, rsp
	mov	QWORD PTR -184[rbp], rax
	lea	rax, -112[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	lea	rax, -144[rbp]
	mov	rdi, rax
	lea	rax, -144[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	mov	DWORD PTR -52[rbp], 0
	mov	DWORD PTR -56[rbp], 0
	jmp	.L3
	mov	eax, DWORD PTR -56[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	sete	al
	test	al, al
	je	.L4
	add	DWORD PTR -52[rbp], 1
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L5
	cmp	DWORD PTR -52[rbp], 1
	je	.L6
	cmp	DWORD PTR -52[rbp], 2
	jne	.L7
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	ebx, 0
	jmp	.L8
	mov	esi, DWORD PTR -112[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -88[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -208[rbp], rax
	mov	QWORD PTR -200[rbp], 0
	movsx	rbx, esi
	mov	edi, DWORD PTR -112[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, esi
	mov	r12, rax
	mov	r13d, 0
	movsx	rax, edi
	mov	r14, rax
	mov	r15d, 0
	mov	rdx, r13
	imul	rdx, r14
	mov	rax, r15
	imul	rax, r12
	lea	rcx, [rdx+rax]
	mov	rax, r12
	mul	r14
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -176[rbp], rax
	mov	QWORD PTR -168[rbp], 0
	mov	r8, QWORD PTR -160[rbp]
	mov	r9, QWORD PTR -152[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -176[rbp]
	mov	r11, QWORD PTR -168[rbp]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	mov	edx, 16
	sub	rdx, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	mov	rcx, rax
	and	rcx, -4096
	mov	rdx, rsp
	sub	rdx, rcx
	cmp	rsp, rdx
	je	.L10
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L9
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L11
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 0
	mov	QWORD PTR -104[rbp], rax
	mov	DWORD PTR -64[rbp], 0
	jmp	.L12
	mov	BYTE PTR -57[rbp], 1
	mov	eax, DWORD PTR -64[rbp]
	mov	DWORD PTR -68[rbp], eax
	jmp	.L13
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, DWORD PTR -68[rbp]
	jne	.L14
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -68[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 88
	jmp	.L15
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L16
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	je	.L17
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L18
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	je	.L17
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	jne	.L19
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 49
	jne	.L19
	mov	eax, 1
	jmp	.L20
	mov	eax, 0
	test	al, al
	je	.L21
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -68[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 61
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 61
	jmp	.L15
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	jne	.L22
	mov	eax, DWORD PTR -68[rbp]
	movsx	rdx, eax
	lea	rax, -144[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	movzx	eax, BYTE PTR [rax]
	cmp	al, 50
	jne	.L22
	mov	eax, 1
	jmp	.L23
	mov	eax, 0
	test	al, al
	je	.L15
	cmp	BYTE PTR -57[rbp], 0
	je	.L24
	mov	BYTE PTR -57[rbp], 0
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -68[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 43
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 45
	jmp	.L35
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -68[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -64[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 45
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	mov	BYTE PTR [rax], 43
	nop
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -68[rbp], eax
	jl	.L26
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -64[rbp], eax
	jl	.L27
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	mov	esi, 10
	mov	rdi, rax
	mov	DWORD PTR -72[rbp], 0
	jmp	.L28
	mov	DWORD PTR -76[rbp], 0
	jmp	.L29
	mov	rsi, QWORD PTR -104[rbp]
	mov	eax, DWORD PTR -76[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	imul	rax, rbx
	mov	rdx, rax
	lea	rax, [rsi+rcx]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -76[rbp], 1
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -76[rbp], eax
	jl	.L30
	mov	esi, 10
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	add	DWORD PTR -72[rbp], 1
	mov	eax, DWORD PTR -112[rbp]
	cmp	DWORD PTR -72[rbp], eax
	jl	.L31
	mov	ebx, 1
	lea	rax, -144[rbp]
	mov	rdi, rax
	cmp	ebx, 1
	jne	.L32
	nop
	mov	rsp, QWORD PTR -184[rbp]
	jmp	.L2
	mov	rsp, QWORD PTR -184[rbp]
	mov	eax, DWORD PTR -108[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -108[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L33
	mov	eax, 0
	lea	rsp, -40[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
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