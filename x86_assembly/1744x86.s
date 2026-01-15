	.text
	.globl	free_network                    # -- Begin function free_network
	.p2align	4, 0x90
free_network:                           # @free_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-12(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movq	%rsp, %rax
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	free_layer@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free@PLT
.LBB0_6:
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free@PLT
.LBB0_8:
	movq	-8(%rbp), %rdi
	callq	free@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free_layer
	.addrsig_sym free