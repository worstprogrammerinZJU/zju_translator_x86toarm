	.text
	.globl	jv_mem_calloc_unguarded         # -- Begin function jv_mem_calloc_unguarded
	.p2align	4, 0x90
jv_mem_calloc_unguarded:                # @jv_mem_calloc_unguarded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	calloc@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc