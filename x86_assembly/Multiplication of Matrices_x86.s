main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 360
	mov	rax, rsp
	mov	QWORD PTR -392[rbp], rax
	lea	rax, -164[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -168[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	esi, DWORD PTR -168[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -96[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -192[rbp], rax
	mov	QWORD PTR -184[rbp], 0
	movsx	rax, esi
	sal	rax, 2
	mov	QWORD PTR -192[rbp], rax
	mov	edi, DWORD PTR -164[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -104[rbp], rax
	movsx	rax, esi
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, edi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	rcx, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR -208[rbp], rax
	mov	QWORD PTR -200[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -224[rbp], rax
	mov	QWORD PTR -216[rbp], 0
	mov	r9, QWORD PTR -208[rbp]
	mov	r10, QWORD PTR -200[rbp]
	mov	rdx, r10
	mov	r11, QWORD PTR -224[rbp]
	mov	r12, QWORD PTR -216[rbp]
	imul	rdx, r11
	mov	rax, r12
	imul	rax, r9
	lea	rcx, [rdx+rax]
	mov	rax, r9
	mul	r11
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
	cmp	rsp, rcx
	je	.L3
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L2
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L4
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -112[rbp], rax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L5
	mov	DWORD PTR -56[rbp], 0
	jmp	.L6
	mov	rdx, QWORD PTR -192[rbp]
	shr	rdx, 2
	mov	eax, DWORD PTR -56[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -112[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -168[rbp]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L7
	add	DWORD PTR -52[rbp], 1
	mov	eax, DWORD PTR -164[rbp]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L8
	lea	rax, -172[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -176[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	esi, DWORD PTR -176[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -120[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -368[rbp], rax
	mov	QWORD PTR -360[rbp], 0
	movsx	rax, esi
	lea	r12, 0[0+rax*4]
	mov	edi, DWORD PTR -172[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -128[rbp], rax
	movsx	rax, esi
	mov	QWORD PTR -240[rbp], rax
	mov	QWORD PTR -232[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -256[rbp], rax
	mov	QWORD PTR -248[rbp], 0
	mov	r8, QWORD PTR -240[rbp]
	mov	r9, QWORD PTR -232[rbp]
	mov	rdx, r9
	mov	r14, QWORD PTR -256[rbp]
	mov	r15, QWORD PTR -248[rbp]
	imul	rdx, r14
	mov	rax, r15
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r14
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR -272[rbp], rax
	mov	QWORD PTR -264[rbp], 0
	movsx	rax, edi
	mov	QWORD PTR -288[rbp], rax
	mov	QWORD PTR -280[rbp], 0
	mov	r8, QWORD PTR -272[rbp]
	mov	r9, QWORD PTR -264[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -288[rbp]
	mov	r11, QWORD PTR -280[rbp]
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
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	ebx, 16
	mov	edx, 0
	div	rbx
	imul	rdx, rax, 16
	mov	rax, rdx
	and	rax, -4096
	mov	rcx, rsp
	sub	rcx, rax
	cmp	rsp, rcx
	je	.L10
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L9
	mov	rax, rdx
	and	eax, 4095
	sub	rsp, rax
	mov	rax, rdx
	and	eax, 4095
	test	rax, rax
	je	.L11
	mov	rax, rdx
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -136[rbp], rax
	mov	DWORD PTR -60[rbp], 0
	jmp	.L12
	mov	DWORD PTR -64[rbp], 0
	jmp	.L13
	mov	rdx, r12
	shr	rdx, 2
	mov	eax, DWORD PTR -64[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -60[rbp]
	cdqe
	imul	rax, rdx
	add	rax, rcx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -136[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	add	DWORD PTR -64[rbp], 1
	mov	eax, DWORD PTR -176[rbp]
	cmp	DWORD PTR -64[rbp], eax
	jl	.L14
	add	DWORD PTR -60[rbp], 1
	mov	eax, DWORD PTR -172[rbp]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L15
	mov	edi, DWORD PTR -176[rbp]
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR -144[rbp], rax
	movsx	rax, edi
	mov	QWORD PTR -384[rbp], rax
	mov	QWORD PTR -376[rbp], 0
	movsx	rax, edi
	lea	rbx, 0[0+rax*4]
	mov	esi, DWORD PTR -164[rbp]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR -152[rbp], rax
	movsx	rax, edi
	mov	QWORD PTR -304[rbp], rax
	mov	QWORD PTR -296[rbp], 0
	movsx	rax, esi
	mov	QWORD PTR -320[rbp], rax
	mov	QWORD PTR -312[rbp], 0
	mov	r14, QWORD PTR -304[rbp]
	mov	r15, QWORD PTR -296[rbp]
	mov	rdx, r15
	mov	r8, QWORD PTR -320[rbp]
	mov	r9, QWORD PTR -312[rbp]
	imul	rdx, r8
	mov	rax, r9
	imul	rax, r14
	lea	rcx, [rdx+rax]
	mov	rax, r14
	mul	r8
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, edi
	mov	QWORD PTR -336[rbp], rax
	mov	QWORD PTR -328[rbp], 0
	movsx	rax, esi
	mov	QWORD PTR -352[rbp], rax
	mov	QWORD PTR -344[rbp], 0
	mov	r8, QWORD PTR -336[rbp]
	mov	r9, QWORD PTR -328[rbp]
	mov	rdx, r9
	mov	r10, QWORD PTR -352[rbp]
	mov	r11, QWORD PTR -344[rbp]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, edi
	movsx	rax, esi
	imul	rax, rdx
	lea	rdx, 0[0+rax*4]
	mov	eax, 16
	sub	rax, 1
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
	je	.L17
	sub	rsp, 4096
	or	QWORD PTR 4088[rsp], 0
	jmp	.L16
	mov	rdx, rax
	and	edx, 4095
	sub	rsp, rdx
	mov	rdx, rax
	and	edx, 4095
	test	rdx, rdx
	je	.L18
	and	eax, 4095
	sub	rax, 8
	add	rax, rsp
	or	QWORD PTR [rax], 0
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR -160[rbp], rax
	mov	DWORD PTR -68[rbp], 0
	jmp	.L19
	mov	DWORD PTR -72[rbp], 0
	jmp	.L20
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -160[rbp]
	mov	edx, DWORD PTR -72[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	DWORD PTR [rax+rdx*4], 0
	mov	DWORD PTR -76[rbp], 0
	jmp	.L21
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -160[rbp]
	mov	edx, DWORD PTR -72[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	edi, DWORD PTR [rax+rdx*4]
	mov	rcx, QWORD PTR -192[rbp]
	shr	rcx, 2
	mov	rax, QWORD PTR -112[rbp]
	mov	edx, DWORD PTR -76[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	edx, DWORD PTR [rax+rdx*4]
	mov	rsi, r12
	shr	rsi, 2
	mov	rax, QWORD PTR -136[rbp]
	mov	ecx, DWORD PTR -72[rbp]
	movsx	r8, ecx
	mov	ecx, DWORD PTR -76[rbp]
	movsx	rcx, ecx
	imul	rcx, rsi
	add	rcx, r8
	mov	eax, DWORD PTR [rax+rcx*4]
	imul	eax, edx
	mov	rsi, rbx
	shr	rsi, 2
	lea	ecx, [rdi+rax]
	mov	rax, QWORD PTR -160[rbp]
	mov	edx, DWORD PTR -72[rbp]
	movsx	rdi, edx
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	imul	rdx, rsi
	add	rdx, rdi
	mov	DWORD PTR [rax+rdx*4], ecx
	add	DWORD PTR -76[rbp], 1
	mov	eax, DWORD PTR -168[rbp]
	cmp	DWORD PTR -76[rbp], eax
	jl	.L22
	add	DWORD PTR -72[rbp], 1
	mov	eax, DWORD PTR -176[rbp]
	cmp	DWORD PTR -72[rbp], eax
	jl	.L23
	add	DWORD PTR -68[rbp], 1
	mov	eax, DWORD PTR -164[rbp]
	cmp	DWORD PTR -68[rbp], eax
	jl	.L24
	mov	DWORD PTR -80[rbp], 0
	jmp	.L25
	mov	DWORD PTR -84[rbp], 0
	jmp	.L26
	mov	rcx, rbx
	shr	rcx, 2
	mov	rax, QWORD PTR -160[rbp]
	mov	edx, DWORD PTR -84[rbp]
	movsx	rsi, edx
	mov	edx, DWORD PTR -80[rbp]
	movsx	rdx, edx
	imul	rdx, rcx
	add	rdx, rsi
	mov	eax, DWORD PTR [rax+rdx*4]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	add	DWORD PTR -84[rbp], 1
	mov	eax, DWORD PTR -176[rbp]
	cmp	DWORD PTR -84[rbp], eax
	jl	.L27
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	add	DWORD PTR -80[rbp], 1
	mov	eax, DWORD PTR -164[rbp]
	cmp	DWORD PTR -80[rbp], eax
	jl	.L28
	mov	rsp, QWORD PTR -392[rbp]
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
	jne	.L32
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L32
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