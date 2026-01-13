	.text
	.p2align	4, 0x90                         # -- Begin function t11
t11:                                    # @t11
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	v11(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$78, v11(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	$78, %edi
	callq	expect@PLT
	movl	v11(%rip), %esi
	movl	$78, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	$78, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	movl	$79, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	$79, %edi
	callq	expect@PLT
	movl	v11(%rip), %esi
	movl	$79, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	$79, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	v11
	.p2align	2
v11:
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t11
	.addrsig_sym expect
	.addrsig_sym v11