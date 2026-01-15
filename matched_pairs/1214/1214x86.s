	.text
	.globl	jv_array_sized                  # -- Begin function jv_array_sized
	.p2align	4, 0x90
jv_array_sized:                         # @jv_array_sized
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jvp_array_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_new