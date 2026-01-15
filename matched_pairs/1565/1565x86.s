	.text
	.p2align	4, 0x90                         # -- Begin function concat_l
concat_l:                               # @concat_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-12(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	leaq	-16(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	isany@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	isany@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	addq	(%rax), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	any@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	addl	-16(%rbp), %esi
	callq	newpatt@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$2, %edx
	callq	addpatt@PLT
	movq	-40(%rbp), %rdi
	callq	optimizecaptures@PLT
.LBB0_4:
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym concat_l
	.addrsig_sym getpatt
	.addrsig_sym isany
	.addrsig_sym any
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym optimizecaptures