	.text
	.globl	bound_image                     # -- Begin function bound_image
	.p2align	4, 0x90
bound_image:                            # @bound_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_22
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -36(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_20
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_18
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-60(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-64(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-68(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-72(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_22:
	movl	-44(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-56(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig