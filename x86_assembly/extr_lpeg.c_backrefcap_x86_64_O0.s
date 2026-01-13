	.text
	.p2align	4, 0x90                         # -- Begin function backrefcap
backrefcap:                             # @backrefcap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	findback@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rdi
	callq	pushcapture@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym backrefcap
	.addrsig_sym findback
	.addrsig_sym pushcapture