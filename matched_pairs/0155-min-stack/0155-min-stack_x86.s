nodeCreate:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
nodePush:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	cmp	QWORD PTR -24[rbp], 0
	jne	.L4
	lea	rax, __PRETTY_FUNCTION__.7[rip]
	mov	rcx, rax
	mov	edx, 18
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -28[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	nop
	leave
	ret
nodePop:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	cmp	QWORD PTR -24[rbp], 0
	jne	.L6
	lea	rax, __PRETTY_FUNCTION__.6[rip]
	mov	rcx, rax
	mov	edx, 26
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L8
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	nop
	leave
	ret
stackCreate:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
stackPush:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L12
	mov	eax, DWORD PTR -12[rbp]
	mov	edi, eax
	call	nodeCreate
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	jmp	.L13
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 8[rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	nodePush
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	nop
	leave
	ret
stackPop:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 8
	mov	rdi, rax
	call	nodePop
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	nop
	leave
	ret
stackTop:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	jne	.L16
	lea	rax, __PRETTY_FUNCTION__.5[rip]
	mov	rcx, rax
	mov	edx, 66
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L17
	lea	rax, __PRETTY_FUNCTION__.5[rip]
	mov	rcx, rax
	mov	edx, 67
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	eax, DWORD PTR [rax]
	leave
	ret
minStackCreate:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	edi, 16
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
minStackPush:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	cmp	QWORD PTR -24[rbp], 0
	jne	.L22
	lea	rax, __PRETTY_FUNCTION__.4[rip]
	mov	rcx, rax
	mov	edx, 84
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	jne	.L23
	mov	eax, 0
	call	stackCreate
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rdx], rax
	mov	eax, 0
	call	stackCreate
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rdx], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	stackPush
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	je	.L24
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	stackTop
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L25
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	stackPush
	jmp	.L27
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	stackPush
	jmp	.L27
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	stackPush
	nop
	leave
	ret
minStackPop:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	jne	.L29
	lea	rax, __PRETTY_FUNCTION__.3[rip]
	mov	rcx, rax
	mov	edx, 103
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	stackPop
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	stackPop
	nop
	leave
	ret
minStackTop:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	jne	.L31
	lea	rax, __PRETTY_FUNCTION__.2[rip]
	mov	rcx, rax
	mov	edx, 109
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	stackTop
	leave
	ret
minStackGetMin:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	jne	.L34
	lea	rax, __PRETTY_FUNCTION__.1[rip]
	mov	rcx, rax
	mov	edx, 114
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	stackTop
	leave
	ret
minStackFree:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	cmp	QWORD PTR -8[rbp], 0
	jne	.L37
	lea	rax, __PRETTY_FUNCTION__.0[rip]
	mov	rcx, rax
	mov	edx, 119
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L38
	jmp	.L39
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	stackPop
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L40
	jmp	.L41
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	stackPop
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L42
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	nop
	leave
	ret
0:
1:
2:
3:
4: