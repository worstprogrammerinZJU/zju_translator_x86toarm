	.text
	.globl	train_network_sgd               # -- Begin function train_network_sgd
	.p2align	4, 0x90
train_network_sgd:                      # @train_network_sgd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %edi
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	callq	get_random_batch@PLT
	movq	-8(%rbp), %rdi
	callq	train_network_datum@PLT
	movss	%xmm0, -32(%rbp)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_batch
	.addrsig_sym train_network_datum