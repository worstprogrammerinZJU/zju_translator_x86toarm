	.text
	.globl	block_has_only_binders          # -- Begin function block_has_only_binders
	.p2align	4, 0x90
block_has_only_binders:                 # @block_has_only_binders
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	OP_HAS_BINDING(%rip), %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	OP_BIND_WILDCARD(%rip), %eax
	xorl	$-1, %eax
	andl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	opcode_describe@PLT
	movl	(%rax), %eax
	andl	-20(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	MODULEMETA(%rip), %rax
	je	.LBB0_5
# %bb.4:
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movl	$1, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.long	0                               # 0x0
	.globl	OP_BIND_WILDCARD
	.p2align	2
OP_BIND_WILDCARD:
	.long	0                               # 0x0
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym opcode_describe
	.addrsig_sym OP_HAS_BINDING
	.addrsig_sym OP_BIND_WILDCARD
	.addrsig_sym MODULEMETA