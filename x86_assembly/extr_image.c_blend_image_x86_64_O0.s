	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function blend_image
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	blend_image
	.p2align	4, 0x90
blend_image:                            # @blend_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	%rdx, -80(%rbp)
	movl	%ecx, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -56(%rbp)
	movss	%xmm0, -84(%rbp)
	movl	-32(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-64(%rbp), %ecx
	movb	%al, -185(%rbp)                 # 1-byte Spill
	jne	.LBB0_3
# %bb.1:
	movl	-28(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-60(%rbp), %ecx
	movb	%al, -185(%rbp)                 # 1-byte Spill
	jne	.LBB0_3
# %bb.2:
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	sete	%al
	movb	%al, -185(%rbp)                 # 1-byte Spill
.LBB0_3:
	movb	-185(%rbp), %al                 # 1-byte Reload
	movzbl	%al, %edi
	andl	$1, %edi
	callq	assert@PLT
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -116(%rbp)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	movl	-116(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_15
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$0, -112(%rbp)
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	movl	-112(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_13
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movl	$0, -108(%rbp)
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-108(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	movss	-84(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -196(%rbp)               # 4-byte Spill
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-136(%rbp), %rdi
	movl	-128(%rbp), %esi
	callq	get_pixel@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -192(%rbp)               # 4-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-84(%rbp), %xmm0
	movss	%xmm0, -200(%rbp)               # 4-byte Spill
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-152(%rbp), %rdi
	movl	-144(%rbp), %esi
	callq	get_pixel@PLT
	movss	-200(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-196(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-192(%rbp), %xmm2               # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm3
	mulss	%xmm3, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-168(%rbp), %rdi
	movl	-160(%rbp), %esi
	callq	set_pixel@PLT
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_8
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_6
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_4
.LBB0_15:
	movl	-8(%rbp), %eax
	movl	%eax, -176(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	-176(%rbp), %edx
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym make_image
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel