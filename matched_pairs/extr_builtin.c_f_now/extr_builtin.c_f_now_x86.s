	.text
	.p2align	4, 0x90                         # -- Begin function f_now
f_now:                                  # @f_now
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time@PLT
	movl	%eax, %edi
	callq	jv_number@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_now
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym time