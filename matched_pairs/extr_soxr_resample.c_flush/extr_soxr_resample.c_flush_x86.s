	.text
	.p2align	4, 0x90                         # -- Begin function flush
flush:                                  # @flush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edi
	callq	soxr_delay@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	%r8, %rsi
	movl	%r9d, %edx
	movq	%r8, %rcx
	movq	$0, (%rsp)
	callq	soxr_process@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edi
	leaq	-12(%rbp), %r8
	xorl	%r9d, %r9d
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%r8, %rsi
	movl	%r9d, %edx
	movq	%rax, (%rsp)
	callq	soxr_process@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edi
	callq	soxr_delay@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	subq	%rdx, %rcx
	movq	%rcx, 8(%rax)
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flush
	.addrsig_sym soxr_delay
	.addrsig_sym soxr_process