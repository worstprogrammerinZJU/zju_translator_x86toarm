	.text
	.p2align	4, 0x90                         # -- Begin function f_delpaths
f_delpaths:                             # @f_delpaths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	jv_delpaths@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_delpaths
	.addrsig_sym jv_delpaths