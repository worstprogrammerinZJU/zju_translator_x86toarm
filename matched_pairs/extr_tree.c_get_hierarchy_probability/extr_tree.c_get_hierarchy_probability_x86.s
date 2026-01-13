	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function get_hierarchy_probability
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	get_hierarchy_probability
	.p2align	4, 0x90
get_hierarchy_probability:              # @get_hierarchy_probability
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jl	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig