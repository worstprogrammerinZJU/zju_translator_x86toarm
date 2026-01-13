	.text
	.globl	walmaint                        # -- Begin function walmaint
	.p2align	4, 0x90
walmaint:                               # @walmaint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	walcompact@PLT
	movq	-8(%rbp), %rdi
	callq	walsync@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walcompact
	.addrsig_sym walsync