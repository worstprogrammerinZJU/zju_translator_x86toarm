	.text
	.globl	gen_destructure_alt             # -- Begin function gen_destructure_alt
	.p2align	4, 0x90
gen_destructure_alt:                    # @gen_destructure_alt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	STOREV(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	STOREVN(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	DESTRUCTURE_ALT(%rip), %edi
	callq	inst_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rdi
	callq	inst_block@PLT
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
	.globl	DESTRUCTURE_ALT
	.p2align	2
DESTRUCTURE_ALT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym STOREV
	.addrsig_sym STOREVN
	.addrsig_sym DESTRUCTURE_ALT