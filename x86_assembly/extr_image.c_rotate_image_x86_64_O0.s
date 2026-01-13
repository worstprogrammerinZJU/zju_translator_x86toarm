	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function rotate_image
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	rotate_image
	.p2align	4, 0x90
rotate_image:                           # @rotate_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movss	%xmm0, -52(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -64(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -60(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -56(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	cos@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	cvtsi2ssl	-56(%rbp), %xmm0
	subss	-68(%rbp), %xmm0
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	sin@PLT
	movss	-168(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-164(%rbp), %xmm2               # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	cvtsi2ssl	-60(%rbp), %xmm3
	subss	-72(%rbp), %xmm3
	mulss	%xmm3, %xmm1
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	sin@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtsi2ssl	-56(%rbp), %xmm0
	subss	-68(%rbp), %xmm0
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	cos@PLT
	movss	-160(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-156(%rbp), %xmm2               # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	cvtsi2ssl	-60(%rbp), %xmm3
	subss	-72(%rbp), %xmm3
	mulss	%xmm3, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-92(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movl	-64(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-120(%rbp), %rdi
	movl	-112(%rbp), %esi
	callq	bilinear_interpolate@PLT
	movss	%xmm0, -100(%rbp)
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movss	-100(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-136(%rbp), %rdi
	movl	-128(%rbp), %esi
	callq	set_pixel@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	movl	-8(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	-144(%rbp), %edx
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym cos
	.addrsig_sym sin
	.addrsig_sym bilinear_interpolate
	.addrsig_sym set_pixel