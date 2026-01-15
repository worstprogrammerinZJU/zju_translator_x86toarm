	.text
	.globl	calc_network_cost               # -- Begin function calc_network_cost
	.p2align	4, 0x90
calc_network_cost:                      # @calc_network_cost
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cvtsi2ssq	(%rax), %xmm0
	addss	-40(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-44(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig