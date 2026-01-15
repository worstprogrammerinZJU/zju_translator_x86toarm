	.text
	.globl	composite_image                 # -- Begin function composite_image
	.p2align	4, 0x90
composite_image:                        # @composite_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -80(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-80(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -76(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-104(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	get_pixel@PLT
	movss	%xmm0, -88(%rbp)
	movl	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	-72(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-128(%rbp), %rdi
	movl	-120(%rbp), %esi
	callq	get_pixel_extend@PLT
	movss	%xmm0, -108(%rbp)
	movl	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	-72(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movss	-88(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-108(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	callq	set_pixel@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym get_pixel_extend
	.addrsig_sym set_pixel