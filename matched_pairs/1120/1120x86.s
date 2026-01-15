	.text
	.globl	place_image                     # -- Begin function place_image
	.p2align	4, 0x90
place_image:                            # @place_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -32(%rbp)
	movss	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	%r9, -64(%rbp)
	movss	%xmm1, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	%esi, -68(%rbp)
	movl	%edx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	$0, -92(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-92(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -88(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -84(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-84(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	cvtsi2ssl	-84(%rbp), %xmm0
	cvtsi2ssl	-68(%rbp), %xmm1
	divss	%xmm1, %xmm0
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
	cvtsi2ssl	-88(%rbp), %xmm0
	cvtsi2ssl	-72(%rbp), %xmm1
	divss	%xmm1, %xmm0
	mulss	-8(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-96(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movl	-92(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-120(%rbp), %rdi
	movss	-112(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	callq	bilinear_interpolate@PLT
	movss	%xmm0, -104(%rbp)
	movl	-84(%rbp), %esi
	addl	-76(%rbp), %esi
	movl	-88(%rbp), %edx
	addl	-80(%rbp), %edx
	movl	-92(%rbp), %ecx
	movss	-104(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-136(%rbp), %rdi
	movss	-128(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	callq	set_pixel@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bilinear_interpolate
	.addrsig_sym set_pixel