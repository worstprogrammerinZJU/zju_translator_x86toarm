	.text
	.globl	hierarchy_predictions           # -- Begin function hierarchy_predictions
	.p2align	4, 0x90
hierarchy_predictions:                  # @hierarchy_predictions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jl	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	cmpl	$0, -28(%rbp)
	je	.LBB0_14
# %bb.7:
	movl	$0, -36(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_8
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig