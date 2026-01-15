	.text
	.p2align	4, 0x90                         # -- Begin function read_tube_name
read_tube_name:                         # @read_tube_name
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$32, %eax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movq	-24(%rbp), %rdi
	movl	NAME_CHARS(%rip), %esi
	callq	strspn@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_5
# %bb.4:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_10
.LBB0_5:
	cmpq	$0, -16(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_7:
	cmpq	$0, -32(%rbp)
	je	.LBB0_9
# %bb.8:
	movq	-24(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_9:
	movl	$0, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NAME_CHARS
	.p2align	2
NAME_CHARS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_tube_name
	.addrsig_sym strspn
	.addrsig_sym NAME_CHARS