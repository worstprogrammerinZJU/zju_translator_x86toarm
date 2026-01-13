	.text
	.globl	srvaccept                       # -- Begin function srvaccept
	.p2align	4, 0x90
srvaccept:                              # @srvaccept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdx
	callq	h_accept@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym h_accept