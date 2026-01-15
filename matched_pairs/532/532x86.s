	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function load_data_detection
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.text
	.globl	load_data_detection
	.p2align	4, 0x90
load_data_detection:                    # @load_data_detection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)                # 8-byte Spill
	movq	%rdi, -160(%rbp)                # 8-byte Spill
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -4(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movss	%xmm2, -40(%rbp)
	movss	%xmm3, -44(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	get_random_paths@PLT
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -56(%rbp)
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	$0, 24(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	8(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	-28(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, 12(%rdi)
	movl	-4(%rbp), %edi
	imull	$5, 16(%rbp), %esi
	callq	make_matrix@PLT
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, (%rdi)
	movl	$0, -60(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movlpd	%xmm0, -88(%rbp)
	movq	%rax, -80(%rbp)
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	make_image@PLT
	movlpd	%xmm0, -104(%rbp)
	movq	%rax, -96(%rbp)
	movsd	-104(%rbp), %xmm0               # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	fill_image@PLT
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-88(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-84(%rbp), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	-88(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	movss	-108(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	cvttss2si	-108(%rbp), %edi
	callq	rand_uniform@PLT
	movaps	%xmm0, %xmm1
	movss	-172(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	movss	-84(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	movss	-112(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	cvttss2si	-112(%rbp), %edi
	callq	rand_uniform@PLT
	movss	-168(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	movss	-164(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -120(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	-116(%rbp), %xmm0
	jbe	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)
	movss	-128(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	mulss	-116(%rbp), %xmm0
	movss	%xmm0, -124(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)
	movss	-124(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	divss	-116(%rbp), %xmm0
	movss	%xmm0, -128(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	cvtsi2ssl	-24(%rbp), %xmm0
	movss	-124(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	xorps	%xmm0, %xmm0
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	callq	rand_uniform@PLT
	movaps	%xmm0, %xmm1
	movss	-176(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm1, -132(%rbp)
	cvtsi2ssl	-28(%rbp), %xmm1
	movss	-128(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvttss2si	%xmm1, %edi
	callq	rand_uniform@PLT
	movss	%xmm0, -136(%rbp)
	movss	-124(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	movss	-132(%rbp), %xmm3               # xmm3 = mem[0],zero,zero,zero
	movss	-136(%rbp), %xmm4               # xmm4 = mem[0],zero,zero,zero
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movsd	-104(%rbp), %xmm5               # xmm5 = mem[0],zero
	movq	-96(%rbp), %rsi
	callq	place_image@PLT
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	movsd	-104(%rbp), %xmm0               # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	callq	random_distort_image@PLT
	movb	$0, %al
	callq	rand@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movsd	-104(%rbp), %xmm0               # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	callq	flip_image@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movl	-96(%rbp), %esi
	movq	16(%rax), %rcx
	movslq	-60(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	-56(%rbp), %rdx
	movslq	-60(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rdi
	movl	16(%rbp), %esi
	movq	(%rax), %rax
	movl	(%rax,%rcx,4), %edx
	movl	24(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movaps	.LCPI0_2(%rip), %xmm2           # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	movss	-132(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	pxor	%xmm2, %xmm0
	cvtsi2ssl	-24(%rbp), %xmm3
	divss	%xmm3, %xmm0
	movss	-136(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm2, %xmm1
	cvtsi2ssl	-28(%rbp), %xmm4
	divss	%xmm4, %xmm1
	movss	-124(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm2
	movss	-128(%rbp), %xmm3               # xmm3 = mem[0],zero,zero,zero
	divss	%xmm4, %xmm3
	callq	fill_truth_detection@PLT
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	callq	free_image@PLT
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movq	-56(%rbp), %rdi
	callq	free@PLT
                                        # kill: def $ecx killed $eax
	movq	-160(%rbp), %rax                # 8-byte Reload
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym make_matrix
	.addrsig_sym load_image_color
	.addrsig_sym make_image
	.addrsig_sym fill_image
	.addrsig_sym rand_uniform
	.addrsig_sym place_image
	.addrsig_sym random_distort_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym fill_truth_detection
	.addrsig_sym free_image
	.addrsig_sym free