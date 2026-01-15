	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function rotate_crop_image
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	rotate_crop_image
	.p2align	4, 0x90
rotate_crop_image:                      # @rotate_crop_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movss	%xmm0, -52(%rbp)
	movss	%xmm1, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movss	%xmm2, -68(%rbp)
	movss	%xmm3, -72(%rbp)
	movss	%xmm4, -76(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -96(%rbp)
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -88(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-88(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -84(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -80(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-80(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	cos@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -208(%rbp)               # 8-byte Spill
	cvtsi2sdl	-80(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movss	-56(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movss	-76(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	movss	-68(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-56(%rbp), %xmm1
	mulss	-76(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)               # 8-byte Spill
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	sin@PLT
	movsd	-208(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm2               # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	cvtsi2sdl	-84(%rbp), %xmm3
	cvtsi2sdl	-64(%rbp), %xmm4
	movsd	.LCPI0_0(%rip), %xmm5           # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm3
	movss	-56(%rbp), %xmm4                # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	divsd	%xmm4, %xmm3
	movss	-72(%rbp), %xmm4                # xmm4 = mem[0],zero,zero,zero
	divss	-56(%rbp), %xmm4
	cvtss2sd	%xmm4, %xmm4
	addsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm1
	movq	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -116(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	sin@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -192(%rbp)               # 8-byte Spill
	cvtsi2sdl	-80(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movss	-56(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movss	-76(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	movss	-68(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-56(%rbp), %xmm1
	mulss	-76(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)               # 8-byte Spill
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	cos@PLT
	movsd	-192(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm2               # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	cvtsi2sdl	-84(%rbp), %xmm3
	cvtsi2sdl	-64(%rbp), %xmm4
	movsd	.LCPI0_0(%rip), %xmm5           # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm3
	movss	-56(%rbp), %xmm4                # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	divsd	%xmm4, %xmm3
	movss	-72(%rbp), %xmm4                # xmm4 = mem[0],zero,zero,zero
	divss	-56(%rbp), %xmm4
	cvtss2sd	%xmm4, %xmm4
	addsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movss	-96(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -120(%rbp)
	movss	-116(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-120(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movl	-88(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	callq	bilinear_interpolate@PLT
	movss	%xmm0, -124(%rbp)
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movss	-124(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	callq	set_pixel@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	movl	-8(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	-168(%rbp), %edx
	addq	$208, %rsp
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