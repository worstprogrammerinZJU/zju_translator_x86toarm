	.text
	.globl	basecfg                         # -- Begin function basecfg
	.p2align	4, 0x90
basecfg:                                # @basecfg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movl	$47, %esi
	callq	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	copy_string@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$46, %esi
	callq	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_5
# %bb.4:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.LBB0_5:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strchr
	.addrsig_sym copy_string