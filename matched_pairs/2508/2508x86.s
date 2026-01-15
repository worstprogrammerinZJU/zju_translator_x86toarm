	.text
	.p2align	4, 0x90                         # -- Begin function tube_free
tube_free:                              # @tube_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	tubes(%rip), %rdi
	callq	ms_remove@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rdi
	callq	ms_clear@PLT
	movq	-8(%rbp), %rdi
	callq	free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tubes
	.p2align	2
tubes:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tube_free
	.addrsig_sym ms_remove
	.addrsig_sym free
	.addrsig_sym ms_clear
	.addrsig_sym tubes