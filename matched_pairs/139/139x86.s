	.text
	.p2align	4, 0x90                         # -- Begin function f_dump
f_dump:                                 # @f_dump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	xorl	%esi, %esi
	callq	jv_dump_string@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_dump
	.addrsig_sym jv_dump_string