	.text
	.globl	ledcDetachPin                   # -- Begin function ledcDetachPin
	.p2align	4, 0x90
ledcDetachPin:                          # @ledcDetachPin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	pinMatrixOutDetach@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMatrixOutDetach