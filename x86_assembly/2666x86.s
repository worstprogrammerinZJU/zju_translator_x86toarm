	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function delta_yolo_class
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	delta_yolo_class
	.p2align	4, 0x90
delta_yolo_class:                       # @delta_yolo_class
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_1
	jp	.LBB0_1
	jmp	.LBB0_4
.LBB0_1:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	cmpq	$0, 16(%rbp)
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	16(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
.LBB0_3:
	jmp	.LBB0_11
.LBB0_4:
	movl	$0, -36(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_11
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %esi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	%esi, %edx
	cmovel	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-36(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-36(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	cmpq	$0, 16(%rbp)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-36(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	16(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_5
.LBB0_11:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig