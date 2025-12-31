	.file	"0239-sliding-window-maximum.c"
	.intel_syntax noprefix
	.text
	.globl	createDeque
	.type	createDeque, @function
createDeque:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	edi, 24
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rax], -1
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	leave
	ret
	.size	createDeque, .-createDeque
	.globl	pushBack
	.type	pushBack, @function
pushBack:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	jmp	.L4
.L6:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], edx
.L4:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	test	eax, eax
	jle	.L5
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L6
.L5:
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 12[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	sal	rax, 3
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 12[rax]
	cdqe
	sal	rax, 3
	add	rdx, rax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR 4[rdx], eax
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], edx
	nop
	pop	rbp
	ret
	.size	pushBack, .-pushBack
	.globl	popFront
	.type	popFront, @function
popFront:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	test	eax, eax
	jle	.L9
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	eax, DWORD PTR 4[rax]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L9
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 16[rax]
	lea	edx, -1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 16[rax], edx
.L9:
	nop
	pop	rbp
	ret
	.size	popFront, .-popFront
	.globl	maxSlidingWindow
	.type	maxSlidingWindow, @function
maxSlidingWindow:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	QWORD PTR -40[rbp], rdi
	mov	DWORD PTR -44[rbp], esi
	mov	DWORD PTR -48[rbp], edx
	mov	QWORD PTR -56[rbp], rcx
	cmp	DWORD PTR -44[rbp], 0
	jne	.L11
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], 0
	mov	eax, 0
	jmp	.L12
.L11:
	mov	eax, DWORD PTR -44[rbp]
	sub	eax, DWORD PTR -48[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -56[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -44[rbp]
	mov	edi, eax
	call	createDeque
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L13
.L15:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	edx, DWORD PTR -20[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	pushBack
	mov	eax, DWORD PTR -48[rbp]
	sub	eax, 1
	cmp	DWORD PTR -20[rbp], eax
	jl	.L14
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	cdqe
	sal	rax, 3
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -48[rbp]
	cdqe
	add	rax, 1
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, DWORD PTR -48[rbp]
	lea	edx, 1[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	popFront
.L14:
	add	DWORD PTR -20[rbp], 1
.L13:
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L15
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	rax, QWORD PTR -16[rbp]
.L12:
	leave
	ret
	.size	maxSlidingWindow, .-maxSlidingWindow
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
