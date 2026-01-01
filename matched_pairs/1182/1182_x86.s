	.file	"1182.c"
	.intel_syntax noprefix
	.text
	.globl	Parent
	.bss
	.align 32
	.type	Parent, @object
	.size	Parent, 200004
Parent:
	.zero	200004
	.globl	eat
	.align 32
	.type	eat, @object
	.size	eat, 200004
eat:
	.zero	200004
	.globl	beeat
	.align 32
	.type	beeat, @object
	.size	beeat, 200004
beeat:
	.zero	200004
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -28[rbp], 0
	lea	rdx, -52[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -32[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	DWORD PTR [rdx+rax], -1
	add	DWORD PTR -32[rbp], 1
.L2:
	mov	eax, DWORD PTR -48[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jle	.L3
	mov	DWORD PTR -32[rbp], 0
	jmp	.L4
.L24:
	lea	rcx, -40[rbp]
	lea	rdx, -44[rbp]
	lea	rax, -36[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -48[rbp]
	cmp	edx, eax
	jg	.L5
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -48[rbp]
	cmp	edx, eax
	jg	.L5
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, 2
	jne	.L6
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	jne	.L6
.L5:
	add	DWORD PTR -28[rbp], 1
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -44[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -40[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L8
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -44[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L8:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L9
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -44[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L9:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L10
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -40[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L10:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L11
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	ebx, DWORD PTR -40[rbp]
	mov	edi, eax
	call	root
	movsx	rdx, ebx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L11:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, 1
	jne	.L12
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	je	.L13
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -44[rbp]
	cmp	edx, eax
	jne	.L14
.L13:
	add	DWORD PTR -28[rbp], 1
	jmp	.L7
.L14:
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -44[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
	jmp	.L7
.L12:
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -40[rbp]
	cmp	edx, eax
	je	.L16
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -44[rbp]
	cmp	edx, eax
	jne	.L17
.L16:
	add	DWORD PTR -28[rbp], 1
	jmp	.L7
.L17:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L18
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L19
.L18:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
.L19:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L20
	mov	edx, DWORD PTR -40[rbp]
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L21
.L20:
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -44[rbp]
	mov	esi, edx
	mov	edi, eax
	call	merge
.L21:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L22
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L22
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, DWORD PTR -40[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L7
.L22:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L23
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L23
	mov	eax, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L7
.L23:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L7
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L7
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
.L7:
	add	DWORD PTR -32[rbp], 1
.L4:
	mov	eax, DWORD PTR -52[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jl	.L24
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	.size	main, .-main
	.globl	root
	.type	root, @function
root:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L28
.L29:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
.L28:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jg	.L29
	jmp	.L30
.L31:
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L30:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L31
	mov	eax, DWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	root, .-root
	.globl	merge
	.type	merge, @function
merge:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, eax
	call	root
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jne	.L34
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L35
.L34:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L36
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L37
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L37
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L38
.L37:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L38
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L38
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L38:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L39
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L39
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L40
.L39:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L40
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L40
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L40:
	mov	eax, DWORD PTR -4[rbp]
	jmp	.L35
.L36:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, Parent[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, Parent[rip]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L41
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L41
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L42
.L41:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L42
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L42
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, eat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, eat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L42:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L43
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L43
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L44
.L43:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L44
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	je	.L44
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, beeat[rip]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, edx
	mov	edi, eax
	call	merge
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, beeat[rip]
	mov	DWORD PTR [rcx+rdx], eax
.L44:
	mov	eax, DWORD PTR -8[rbp]
.L35:
	leave
	ret
	.size	merge, .-merge
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
