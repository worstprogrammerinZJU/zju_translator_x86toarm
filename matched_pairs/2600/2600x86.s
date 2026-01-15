	.text
	.globl	top_k                           # -- Begin function top_k
	.p2align	4, 0x90
top_k:                                  # @top_k
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	$-1, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -28(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_15
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -32(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jl	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_7
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_5
.LBB0_15:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig