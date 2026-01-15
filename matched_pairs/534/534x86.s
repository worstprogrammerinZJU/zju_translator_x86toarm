	.text
	.globl	load_data_iseg                  # -- Begin function load_data_iseg
	.p2align	4, 0x90
load_data_iseg:                         # @load_data_iseg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp                      # imm = 0x150
	movq	%rdi, -280(%rbp)                # 8-byte Spill
	movq	%rdi, -288(%rbp)                # 8-byte Spill
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movss	%xmm0, -48(%rbp)
	movss	%xmm1, -52(%rbp)
	movss	%xmm2, -56(%rbp)
	movss	%xmm3, -60(%rbp)
	movss	%xmm4, -64(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	get_random_paths@PLT
	movq	-280(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -72(%rbp)
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movq	-280(%rbp), %rdi                # 8-byte Reload
	movq	$0, 24(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	8(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-280(%rbp), %rdi                # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, 12(%rdi)
	movl	-20(%rbp), %edi
	movl	-40(%rbp), %eax
	cltd
	idivl	32(%rbp)
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	cltd
	idivl	32(%rbp)
	imull	%eax, %esi
	addl	$1, %esi
	imull	24(%rbp), %esi
	callq	make_matrix@PLT
	movq	-280(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, (%rdi)
	movl	$0, -76(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movl	%edx, -112(%rbp)
	movq	%rax, -120(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movl	40(%rbp), %ecx
	movl	48(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %edi
	movl	-96(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rsi
	movl	-160(%rbp), %edx
	movq	%rsp, %rax
	movl	%edi, (%rax)
	leaq	-152(%rbp), %rdi
	callq	random_augment_args@PLT
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-144(%rbp), %r10d
	movl	-152(%rbp), %ebx
	movl	-148(%rbp), %r11d
	movl	-96(%rbp), %eax
	movl	%eax, -192(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	movl	-192(%rbp), %esi
	movq	%rsp, %rax
	movl	%ebx, 16(%rax)
	movl	%r11d, 8(%rax)
	movl	%r10d, (%rax)
	callq	rotate_crop_image@PLT
	movl	%edx, -208(%rbp)
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -176(%rbp)
	movb	$0, %al
	callq	rand@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -220(%rbp)
	cmpl	$0, -220(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-240(%rbp), %rdi
	movl	-232(%rbp), %esi
	callq	flip_image@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	-184(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -248(%rbp)
	movq	-256(%rbp), %rdi
	movl	-248(%rbp), %esi
	callq	random_distort_image@PLT
                                        # kill: def $ecx killed $eax
	movq	-280(%rbp), %rax                # 8-byte Reload
	movl	-176(%rbp), %esi
	movq	16(%rax), %rcx
	movslq	-76(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	-72(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movl	24(%rbp), %esi
	movq	(%rax), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -292(%rbp)                # 4-byte Spill
	movl	16(%rbp), %ecx
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	-220(%rbp), %r11d
	movl	-40(%rbp), %eax
	cltd
	idivl	32(%rbp)
	movl	%eax, %r10d
	movl	-44(%rbp), %eax
	cltd
	idivl	32(%rbp)
	movl	-292(%rbp), %edx                # 4-byte Reload
	leaq	-152(%rbp), %rbx
	movq	(%rbx), %r14
	movq	%r14, (%rsp)
	movq	8(%rbx), %r14
	movq	%r14, 8(%rsp)
	movq	16(%rbx), %r14
	movq	%r14, 16(%rsp)
	movl	24(%rbx), %ebx
	movl	%ebx, 24(%rsp)
	movl	%r11d, 32(%rsp)
	movl	%r10d, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	fill_truth_iseg@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -264(%rbp)
	movq	-272(%rbp), %rdi
	movl	-264(%rbp), %esi
	callq	free_image@PLT
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-72(%rbp), %rdi
	callq	free@PLT
                                        # kill: def $ecx killed $eax
	movq	-288(%rbp), %rax                # 8-byte Reload
	addq	$336, %rsp                      # imm = 0x150
	popq	%rbx
	popq	%r14
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
	.addrsig_sym fill_truth_iseg
	.addrsig_sym free_image
	.addrsig_sym free