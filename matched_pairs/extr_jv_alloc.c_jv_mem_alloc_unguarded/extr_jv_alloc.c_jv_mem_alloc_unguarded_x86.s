	.text
	.globl	jv_mem_alloc_unguarded          # -- Begin function jv_mem_alloc_unguarded
	.p2align	4, 0x90
jv_mem_alloc_unguarded:                 # @jv_mem_alloc_unguarded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	malloc@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc