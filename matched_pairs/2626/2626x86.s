	.text
	.globl	make_vector                     # -- Begin function make_vector
	.p2align	4, 0x90
make_vector:                            # @make_vector
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edi, %edi
	callq	do_make_vector@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector