	.text
	.globl	get_detection_detections        # -- Begin function get_detection_detections
	.p2align	4, 0x90
get_detection_detections:               # @get_detection_detections
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-104(%rbp), %rdx                # 8-byte Reload
	movl	-28(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	8(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_15
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	-28(%rbp), %eax
	cltd
	idivl	8(%rcx)
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	cltd
	idivl	8(%rcx)
	movl	%edx, -56(%rbp)
	movl	$0, -36(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	-36(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-104(%rbp), %rax                # 8-byte Reload
	movl	-28(%rbp), %ecx
	imull	12(%rax), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	8(%rax), %ecx
	imull	8(%rax), %ecx
	imull	16(%rax), %ecx
	movl	-28(%rbp), %edx
	imull	12(%rax), %edx
	addl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movq	-48(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	movl	8(%rax), %ecx
	imull	8(%rax), %ecx
	movl	16(%rax), %edx
	addl	12(%rax), %edx
	imull	%edx, %ecx
	movl	-28(%rbp), %edx
	imull	12(%rax), %edx
	addl	-36(%rbp), %edx
	shll	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movq	-48(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvtsi2ssl	8(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtsi2ssl	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movq	-48(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-52(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvtsi2ssl	8(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movq	-48(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	24(%rax), %rcx
	movl	$1, %edi
	movl	$2, %eax
	cmpq	$0, %rcx
	cmovnel	%eax, %edi
	callq	pow@PLT
	movl	%eax, %ecx
	movq	-104(%rbp), %rax                # 8-byte Reload
	imull	-4(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-48(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	24(%rax), %rcx
	movl	$1, %edi
	movl	$2, %eax
	cmpq	$0, %rcx
	cmovnel	%eax, %edi
	callq	pow@PLT
	imull	-8(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-80(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movss	-68(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movss	%xmm0, (%rax)
	movl	$0, -32(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	-32(%rbp), %eax
	cmpl	16(%rcx), %eax
	jge	.LBB0_11
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movl	-28(%rbp), %eax
	imull	16(%rcx), %eax
	movl	%eax, -92(%rbp)
	movss	-68(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-96(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-12(%rbp), %xmm0
	jbe	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movss	-96(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=3
	movss	-108(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movslq	-32(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_5
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_15:
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow