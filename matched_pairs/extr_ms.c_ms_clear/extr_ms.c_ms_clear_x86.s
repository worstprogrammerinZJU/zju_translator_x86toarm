	.text
	.globl	ms_clear                        # -- Begin function ms_clear
	.p2align	4, 0x90
ms_clear:                               # @ms_clear
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	ms_delete@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_3:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	free@PLT
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	callq	ms_init@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ms_delete
	.addrsig_sym free
	.addrsig_sym ms_init