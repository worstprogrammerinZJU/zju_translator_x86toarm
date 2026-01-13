	.text
	.globl	col2im_cpu                      # -- Begin function col2im_cpu
	.p2align	4, 0x90
col2im_cpu:                             # @col2im_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	-16(%rbp), %eax
	movl	16(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	subl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	movl	16(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	subl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, -56(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	cltd
	idivl	-24(%rbp)
	movl	%edx, -60(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	cltd
	idivl	-24(%rbp)
	movl	%eax, -64(%rbp)
	movl	$0, -36(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -40(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-60(%rbp), %eax
	movl	-36(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movl	-32(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	24(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movl	16(%rbp), %eax
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	col2im_add_pixel@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym col2im_add_pixel