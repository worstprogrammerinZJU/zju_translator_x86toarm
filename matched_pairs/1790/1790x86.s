	.text
	.globl	oldstyle2                       # -- Begin function oldstyle2
	.p2align	4, 0x90
oldstyle2:                              # @oldstyle2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig