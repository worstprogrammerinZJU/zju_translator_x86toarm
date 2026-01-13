	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__wpcrc
stbiw__wpcrc:                           # @stbiw__wpcrc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-12(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	addq	%rax, %rdi
	addq	$-4, %rdi
	movl	-12(%rbp), %esi
	addl	$4, %esi
	callq	stbiw__crc32@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-16(%rbp), %esi
	callq	stbiw__wp32@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__wpcrc
	.addrsig_sym stbiw__crc32
	.addrsig_sym stbiw__wp32