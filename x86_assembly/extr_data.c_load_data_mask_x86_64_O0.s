	.text
	.globl	load_data_mask                  # -- Begin function load_data_mask
	.p2align	4, 0x90
load_data_mask:                         # @load_data_mask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$328, %rsp                      # imm = 0x148
	movq	%rdi, -272(%rbp)                # 8-byte Spill
	movq	%rdi, -280(%rbp)                # 8-byte Spill
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movss	%xmm0, -40(%rbp)
	movss	%xmm1, -44(%rbp)
	movss	%xmm2, -48(%rbp)
	movss	%xmm3, -52(%rbp)
	movss	%xmm4, -56(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	get_random_paths@PLT
	movq	-272(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -64(%rbp)
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movq	-272(%rbp), %rdi                # 8-byte Reload
	movq	$0, 24(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	8(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-272(%rbp), %rdi                # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	-36(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, 12(%rdi)
	movl	-12(%rbp), %edi
	movl	32(%rbp), %esi
	addl	$1, %esi
	imull	24(%rbp), %esi
	callq	make_matrix@PLT
	movq	-272(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, (%rdi)
	movl	$0, -68(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movl	%edx, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movl	40(%rbp), %ecx
	movl	48(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %edi
	movl	-88(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rsi
	movl	-152(%rbp), %edx
	movq	%rsp, %rax
	movl	%edi, (%rax)
	leaq	-144(%rbp), %rdi
	callq	random_augment_args@PLT
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-144(%rbp), %ebx
	movl	-140(%rbp), %r11d
	movl	-88(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movl	-184(%rbp), %esi
	movq	%rsp, %rax
	movl	%ebx, 16(%rax)
	movl	%r11d, 8(%rax)
	movl	%r10d, (%rax)
	callq	rotate_crop_image@PLT
	movl	%edx, -200(%rbp)
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -168(%rbp)
	movb	$0, %al
	callq	rand@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -212(%rbp)
	cmpl	$0, -212(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -224(%rbp)
	movq	-232(%rbp), %rdi
	movl	-224(%rbp), %esi
	callq	flip_image@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -240(%rbp)
	movq	-248(%rbp), %rdi
	movl	-240(%rbp), %esi
	callq	random_distort_image@PLT
                                        # kill: def $ecx killed $eax
	movq	-272(%rbp), %rax                # 8-byte Reload
	movl	-168(%rbp), %esi
	movq	16(%rax), %rcx
	movslq	-68(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	-64(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movl	24(%rbp), %esi
	movq	(%rax), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	16(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-212(%rbp), %eax
	leaq	-144(%rbp), %r10
	movq	(%r10), %r11
	movq	%r11, (%rsp)
	movq	8(%r10), %r11
	movq	%r11, 8(%rsp)
	movq	16(%r10), %r11
	movq	%r11, 16(%rsp)
	movl	24(%r10), %r10d
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	movl	$14, 40(%rsp)
	movl	$14, 48(%rsp)
	callq	fill_truth_mask@PLT
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -256(%rbp)
	movq	-264(%rbp), %rdi
	movl	-256(%rbp), %esi
	callq	free_image@PLT
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-64(%rbp), %rdi
	callq	free@PLT
                                        # kill: def $ecx killed $eax
	movq	-280(%rbp), %rax                # 8-byte Reload
	addq	$328, %rsp                      # imm = 0x148
	popq	%rbx
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
	.addrsig_sym random_augment_args
	.addrsig_sym rotate_crop_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym fill_truth_mask
	.addrsig_sym free_image
	.addrsig_sym free