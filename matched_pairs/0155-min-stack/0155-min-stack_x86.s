	.file	"0155-min-stack.c"
	.intel_syntax noprefix
	.text
	.globl	nodeCreate
	.type	nodeCreate, @function
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
	.size	nodeCreate, .-nodeCreate
	.section	.rodata
	.align 8
.LC0:
	.string	"/home/xiong/home/summer/dataset/poj-master/poj/0155-min-stack.c"
.LC1:
	.string	"obj"
	.text
	.globl	nodePush
	.type	nodePush, @function
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
.L4:
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
	.size	nodePush, .-nodePush
	.globl	nodePop
	.type	nodePop, @function
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
.L6:
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
.L8:
	nop
	leave
	ret
	.size	nodePop, .-nodePop
	.globl	stackCreate
	.type	stackCreate, @function
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
	.size	stackCreate, .-stackCreate
	.globl	stackPush
	.type	stackPush, @function
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
.L12:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 8[rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	rdi, rdx
	call	nodePush
.L13:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	nop
	leave
	ret
	.size	stackPush, .-stackPush
	.globl	stackPop
	.type	stackPop, @function
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
	.size	stackPop, .-stackPop
	.section	.rodata
.LC2:
	.string	"stack"
.LC3:
	.string	"stack->top"
	.text
	.globl	stackTop
	.type	stackTop, @function
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
.L16:
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
.L17:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	eax, DWORD PTR [rax]
	leave
	ret
	.size	stackTop, .-stackTop
	.globl	minStackCreate
	.type	minStackCreate, @function
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
	.size	minStackCreate, .-minStackCreate
	.globl	minStackPush
	.type	minStackPush, @function
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
.L22:
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
.L23:
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
.L25:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -4[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	stackPush
	jmp	.L27
.L24:
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	stackPush
.L27:
	nop
	leave
	ret
	.size	minStackPush, .-minStackPush
	.globl	minStackPop
	.type	minStackPop, @function
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
.L29:
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
	.size	minStackPop, .-minStackPop
	.globl	minStackTop
	.type	minStackTop, @function
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
.L31:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	stackTop
	leave
	ret
	.size	minStackTop, .-minStackTop
	.globl	minStackGetMin
	.type	minStackGetMin, @function
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
.L34:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	stackTop
	leave
	ret
	.size	minStackGetMin, .-minStackGetMin
	.globl	minStackFree
	.type	minStackFree, @function
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
.L37:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L38
	jmp	.L39
.L40:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	stackPop
.L39:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR 8[rax]
	test	rax, rax
	jne	.L40
	jmp	.L41
.L42:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rdi, rax
	call	stackPop
.L41:
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
.L38:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	nop
	leave
	ret
	.size	minStackFree, .-minStackFree
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.7, @object
	.size	__PRETTY_FUNCTION__.7, 9
__PRETTY_FUNCTION__.7:
	.string	"nodePush"
	.align 8
	.type	__PRETTY_FUNCTION__.6, @object
	.size	__PRETTY_FUNCTION__.6, 8
__PRETTY_FUNCTION__.6:
	.string	"nodePop"
	.align 8
	.type	__PRETTY_FUNCTION__.5, @object
	.size	__PRETTY_FUNCTION__.5, 9
__PRETTY_FUNCTION__.5:
	.string	"stackTop"
	.align 8
	.type	__PRETTY_FUNCTION__.4, @object
	.size	__PRETTY_FUNCTION__.4, 13
__PRETTY_FUNCTION__.4:
	.string	"minStackPush"
	.align 8
	.type	__PRETTY_FUNCTION__.3, @object
	.size	__PRETTY_FUNCTION__.3, 12
__PRETTY_FUNCTION__.3:
	.string	"minStackPop"
	.align 8
	.type	__PRETTY_FUNCTION__.2, @object
	.size	__PRETTY_FUNCTION__.2, 12
__PRETTY_FUNCTION__.2:
	.string	"minStackTop"
	.align 8
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 15
__PRETTY_FUNCTION__.1:
	.string	"minStackGetMin"
	.align 8
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 13
__PRETTY_FUNCTION__.0:
	.string	"minStackFree"
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
