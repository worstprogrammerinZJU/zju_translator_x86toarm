	.text
	.globl	t1                              # -- Begin function t1
	.p2align	4, 0x90
t1:                                     # @t1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$77, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig