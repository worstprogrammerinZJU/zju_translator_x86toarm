	.text
	.globl	delta_region_mask               # -- Begin function delta_region_mask
	.p2align	4, 0x90
delta_region_mask:                      # @delta_region_mask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cvtsi2ssl	16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-40(%rbp), %edx
	imull	-36(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-40(%rbp), %edx
	imull	-36(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig