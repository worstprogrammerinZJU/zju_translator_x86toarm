	.text
	.p2align	4, 0x90                         # -- Begin function auxnew
auxnew:                                 # @auxnew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	addl	-28(%rbp), %esi
	callq	newpatt@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	jointable@PLT
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym auxnew
	.addrsig_sym newpatt
	.addrsig_sym jointable