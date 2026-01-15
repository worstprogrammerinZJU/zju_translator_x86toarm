	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function resize_image
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	resize_image
	.p2align	4, 0x90
resize_image:                           # @resize_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$352, %rsp                      # imm = 0x160
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %edi
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	callq	make_image@PLT
	movl	%edx, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)
	movl	$0, -116(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-116(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -108(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-108(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -112(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-112(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -128(%rbp)
	movl	-112(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	cmpl	$1, -24(%rbp)
	jne	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-24(%rbp), %edx
	subl	$1, %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	callq	get_pixel@PLT
	movss	%xmm0, -128(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=3
	cvtsi2ssl	-112(%rbp), %xmm0
	mulss	-120(%rbp), %xmm0
	movss	%xmm0, -148(%rbp)
	cvttss2si	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	movss	-148(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-152(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-156(%rbp), %xmm0
	movss	%xmm0, -332(%rbp)               # 4-byte Spill
	movl	-152(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movl	-168(%rbp), %esi
	callq	get_pixel@PLT
	movss	%xmm0, -336(%rbp)               # 4-byte Spill
	movss	-156(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -340(%rbp)               # 4-byte Spill
	movl	-152(%rbp), %edx
	addl	$1, %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-192(%rbp), %rdi
	movl	-184(%rbp), %esi
	callq	get_pixel@PLT
	movss	-340(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-336(%rbp), %xmm2               # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	movss	-332(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-112(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movss	-128(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -200(%rbp)
	movq	-208(%rbp), %rdi
	movl	-200(%rbp), %esi
	callq	set_pixel@PLT
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_5
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_3
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	movl	$0, -116(%rbp)
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	movl	-116(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_35
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$0, -108(%rbp)
.LBB0_19:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	movl	-108(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_33
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	cvtsi2ssl	-108(%rbp), %xmm0
	mulss	-124(%rbp), %xmm0
	movss	%xmm0, -212(%rbp)
	cvttss2si	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	movss	-212(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-216(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -220(%rbp)
	movl	$0, -112(%rbp)
.LBB0_21:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-112(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=3
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-220(%rbp), %xmm0
	movss	%xmm0, -344(%rbp)               # 4-byte Spill
	movl	-112(%rbp), %edx
	movl	-216(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	-88(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-240(%rbp), %rdi
	movl	-232(%rbp), %esi
	callq	get_pixel@PLT
	movaps	%xmm0, %xmm1
	movss	-344(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -224(%rbp)
	movl	-112(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movss	-224(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -248(%rbp)
	movq	-256(%rbp), %rdi
	movl	-248(%rbp), %esi
	callq	set_pixel@PLT
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=3
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               #   in Loop: Header=BB0_19 Depth=2
	movl	-108(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_19 Depth=2
	cmpl	$1, -28(%rbp)
	jne	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_19 Depth=2
	jmp	.LBB0_32
.LBB0_27:                               #   in Loop: Header=BB0_19 Depth=2
	movl	$0, -112(%rbp)
.LBB0_28:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-112(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=3
	movss	-220(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -348(%rbp)               # 4-byte Spill
	movl	-112(%rbp), %edx
	movl	-216(%rbp), %ecx
	addl	$1, %ecx
	movl	-116(%rbp), %r8d
	movq	-88(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -272(%rbp)
	movq	-280(%rbp), %rdi
	movl	-272(%rbp), %esi
	callq	get_pixel@PLT
	movaps	%xmm0, %xmm1
	movss	-348(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -260(%rbp)
	movl	-112(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movss	-260(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -288(%rbp)
	movq	-296(%rbp), %rdi
	movl	-288(%rbp), %esi
	callq	add_pixel@PLT
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=3
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_28
.LBB0_31:                               #   in Loop: Header=BB0_19 Depth=2
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_19 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_19
.LBB0_33:                               #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_17
.LBB0_35:
	movl	-80(%rbp), %eax
	movl	%eax, -304(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	movl	-304(%rbp), %esi
	callq	free_image@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -320(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movl	-320(%rbp), %edx
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel
	.addrsig_sym add_pixel
	.addrsig_sym free_image