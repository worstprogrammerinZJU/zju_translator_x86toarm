	.text
	.p2align	4, 0x90                         # -- Begin function i2b
i2b:                                    # @i2b
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	Balloc@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym i2b
	.addrsig_sym Balloc