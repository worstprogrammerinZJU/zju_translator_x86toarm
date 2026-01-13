	.text
	.p2align	4, 0x90                         # -- Begin function free_temp
free_temp:                              # @free_temp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	av_free@PLT
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free_temp
	.addrsig_sym av_free
	.addrsig_sym memset