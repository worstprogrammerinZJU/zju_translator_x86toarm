	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function ghost_image
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_1:
	.quad	0x4000000000000000              # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_2:
	.long	0x3f800000                      # float 1
	.text
	.globl	ghost_image
	.p2align	4, 0x90
ghost_image:                            # @ghost_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
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
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	sqrt@PLT
	movss	%xmm0, -88(%rbp)
	movl	$0, -84(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_14
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -80(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-80(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_12
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -76(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	cvtsi2sdl	-76(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-76(%rbp), %xmm2
	cvtsi2sdl	-16(%rbp), %xmm1
	movsd	.LCPI0_1(%rip), %xmm3           # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	cvtsi2sdl	-80(%rbp), %xmm1
	cvtsi2sdl	-8(%rbp), %xmm3
	movsd	.LCPI0_1(%rip), %xmm4           # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm1
	movsd	.LCPI0_0(%rip), %xmm3           # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm1
	cvtsi2sdl	-80(%rbp), %xmm3
	cvtsi2sdl	-8(%rbp), %xmm4
	movsd	.LCPI0_1(%rip), %xmm5           # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm3
	movsd	.LCPI0_0(%rip), %xmm4           # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	sqrt@PLT
	movss	%xmm0, -92(%rbp)
	movss	-92(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-88(%rbp), %xmm1
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	-96(%rbp), %xmm0
	jbe	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -96(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-120(%rbp), %rdi
	movl	-112(%rbp), %esi
	callq	get_pixel@PLT
	movss	%xmm0, -100(%rbp)
	movl	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	-72(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	callq	get_pixel@PLT
	movss	%xmm0, -124(%rbp)
	movss	-96(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	-96(%rbp), %xmm1
	mulss	-124(%rbp), %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)
	movl	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	-72(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movss	-148(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-168(%rbp), %rdi
	movl	-160(%rbp), %esi
	callq	set_pixel@PLT
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_5
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_3
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel