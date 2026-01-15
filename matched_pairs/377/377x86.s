	.text
	.globl	rescale_weights                 # -- Begin function rescale_weights
	.p2align	4, 0x90
rescale_weights:                        # @rescale_weights
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edx
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	get_convolutional_weight@PLT
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	cmpl	$3, -48(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	scale_image@PLT
	movl	-36(%rbp), %edi
	movl	-44(%rbp), %esi
	imull	-40(%rbp), %esi
	imull	-48(%rbp), %esi
	callq	sum_array@PLT
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_convolutional_weight
	.addrsig_sym scale_image
	.addrsig_sym sum_array