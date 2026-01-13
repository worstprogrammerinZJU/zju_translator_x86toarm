	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function load_data_region
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	load_data_region
	.p2align	4, 0x90
load_data_region:                       # @load_data_region
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$352, %rsp                      # imm = 0x160
	movq	%rdi, -328(%rbp)                # 8-byte Spill
	movq	%rdi, -336(%rbp)                # 8-byte Spill
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
	movq	-328(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -56(%rbp)
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movq	-328(%rbp), %rdi                # 8-byte Reload
	movq	$0, 24(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	8(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-328(%rbp), %rdi                # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	-28(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, 12(%rdi)
	movl	16(%rbp), %eax
	imull	16(%rbp), %eax
	movl	24(%rbp), %ecx
	addl	$5, %ecx
	imull	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-4(%rbp), %edi
	movl	-64(%rbp), %esi
	callq	make_matrix@PLT
	movq	-328(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, (%rdi)
	movl	$0, -60(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%edx, %edx
	movl	%edx, -340(%rbp)                # 4-byte Spill
	movl	%edx, %esi
	callq	load_image_color@PLT
	movl	%edx, -96(%rbp)
	movq	%rax, -104(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -112(%rbp)
	cvtsi2ssl	-112(%rbp), %xmm0
	movss	-32(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -116(%rbp)
	cvtsi2ssl	-108(%rbp), %xmm0
	movss	-32(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -120(%rbp)
	movl	-116(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, -124(%rbp)
	movl	-116(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, -128(%rbp)
	movl	-120(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, %ecx
	movl	-340(%rbp), %eax                # 4-byte Reload
	movl	%ecx, -136(%rbp)
	movl	-112(%rbp), %ecx
	movl	-124(%rbp), %edx
	subl	%edx, %ecx
	movl	-128(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -140(%rbp)
	movl	-108(%rbp), %ecx
	movl	-132(%rbp), %edx
	subl	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -144(%rbp)
	cvtsi2ssl	-140(%rbp), %xmm0
	cvtsi2ssl	-112(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)
	cvtsi2ssl	-144(%rbp), %xmm0
	cvtsi2ssl	-108(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -152(%rbp)
                                        # kill: def $al killed $al killed $eax
	callq	rand@PLT
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%eax, %ecx
	addl	%edx, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-124(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %r9d
	movl	-80(%rbp), %eax
	movl	%eax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movl	-176(%rbp), %esi
	callq	crop_image@PLT
	movl	%edx, -192(%rbp)
	movq	%rax, -200(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	cvtsi2ssl	-124(%rbp), %xmm0
	cvtsi2ssl	-112(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-148(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -204(%rbp)
	cvtsi2ssl	-132(%rbp), %xmm0
	cvtsi2ssl	-108(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-152(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -208(%rbp)
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-160(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	movl	-232(%rbp), %esi
	callq	resize_image@PLT
	movl	%edx, -248(%rbp)
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	-248(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -156(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, -264(%rbp)
	movq	-272(%rbp), %rdi
	movl	-264(%rbp), %esi
	callq	flip_image@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	-224(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, -280(%rbp)
	movq	-288(%rbp), %rdi
	movl	-280(%rbp), %esi
	callq	random_distort_image@PLT
                                        # kill: def $ecx killed $eax
	movq	-328(%rbp), %rax                # 8-byte Reload
	movl	-216(%rbp), %esi
	movq	16(%rax), %rcx
	movslq	-60(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	-56(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movq	(%rax), %rax
	movslq	-60(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movl	24(%rbp), %edx
	movl	16(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movss	-204(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-208(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	-148(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm3
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %r9d
	movss	-152(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm3
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, (%rsp)
	callq	fill_truth_region@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -296(%rbp)
	movq	-304(%rbp), %rdi
	movl	-296(%rbp), %esi
	callq	free_image@PLT
	movq	-168(%rbp), %rax
	movq	%rax, -320(%rbp)
	movl	-160(%rbp), %eax
	movl	%eax, -312(%rbp)
	movq	-320(%rbp), %rdi
	movl	-312(%rbp), %esi
	callq	free_image@PLT
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-56(%rbp), %rdi
	callq	free@PLT
                                        # kill: def $ecx killed $eax
	movq	-336(%rbp), %rax                # 8-byte Reload
	addq	$352, %rsp                      # imm = 0x160
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
	.addrsig_sym rand_uniform
	.addrsig_sym rand
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym fill_truth_region
	.addrsig_sym free_image
	.addrsig_sym free