	.text
	.globl	booltest1                       # -- Begin function booltest1
	.p2align	4, 0x90
booltest1:                              # @booltest1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig