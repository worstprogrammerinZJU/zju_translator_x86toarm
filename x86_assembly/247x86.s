	.text
	.p2align	4, 0x90                         # -- Begin function bind_matcher
bind_matcher:                           # @bind_matcher
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	STOREV(%rip), %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	STOREVN(%rip), %rax
	jne	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	inst_block@PLT
	movl	%eax, %edi
	movl	OP_HAS_VARIABLE(%rip), %edx
	movq	-24(%rbp), %rsi
	xorl	%ecx, %ecx
	callq	block_bind_subblock@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	BLOCK@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STOREV
	.p2align	3
STOREV:
	.quad	0                               # 0x0
	.globl	STOREVN
	.p2align	3
STOREVN:
	.quad	0                               # 0x0
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bind_matcher
	.addrsig_sym block_bind_subblock
	.addrsig_sym inst_block
	.addrsig_sym BLOCK
	.addrsig_sym STOREV
	.addrsig_sym STOREVN
	.addrsig_sym OP_HAS_VARIABLE