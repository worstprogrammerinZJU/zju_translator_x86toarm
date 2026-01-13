	.text
	.globl	ptrtest1                        # -- Begin function ptrtest1
	.p2align	4, 0x90
ptrtest1:                               # @ptrtest1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$55, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig