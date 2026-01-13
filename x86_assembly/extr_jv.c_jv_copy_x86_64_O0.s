	.text
	.globl	jv_copy                         # -- Begin function jv_copy
	.p2align	4, 0x90
jv_copy:                                # @jv_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %edi
	callq	JVP_IS_ALLOCATED@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-16(%rbp), %edi
	callq	jvp_refcnt_inc@PLT
.LBB0_2:
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_IS_ALLOCATED
	.addrsig_sym jvp_refcnt_inc