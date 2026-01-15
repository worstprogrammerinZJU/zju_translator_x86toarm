	.text
	.globl	pulseInLong                     # -- Begin function pulseInLong
	.p2align	4, 0x90
pulseInLong:                            # @pulseInLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	pulseIn@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pulseIn