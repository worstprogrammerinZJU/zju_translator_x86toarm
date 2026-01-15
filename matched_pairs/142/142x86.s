	.text
	.p2align	4, 0x90                         # -- Begin function f_equal
f_equal:                                # @f_equal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	jv_bool@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_equal
	.addrsig_sym jv_free
	.addrsig_sym jv_bool
	.addrsig_sym jv_equal