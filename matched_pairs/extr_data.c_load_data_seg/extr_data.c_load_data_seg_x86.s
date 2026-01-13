	.text
	.globl	load_data_seg                   # -- Begin function load_data_seg
	.p2align	4, 0x90
load_data_seg:                          # @load_data_seg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$408, %rsp                      # imm = 0x198
	movq	%rdi, -368(%rbp)                # 8-byte Spill
	movq	%rdi, -376(%rbp)                # 8-byte Spill
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
	movq	-368(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -64(%rbp)
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	-368(%rbp), %rdi                # 8-byte Reload
	movq	$0, 32(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	16(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-368(%rbp), %rdi                # 8-byte Reload
	movq	%rax, 24(%rdi)
	movl	-36(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, 20(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-36(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	16(%rbp), %eax
	cltd
	idivl	40(%rbp)
	cltd
	idivl	40(%rbp)
	movl	%eax, 4(%rdi)
	movl	16(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-368(%rbp), %rdi                # 8-byte Reload
	movq	%rax, 8(%rdi)
	movl	$0, -68(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movl	%edx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movl	24(%rbp), %ecx
	movl	32(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %edi
	movl	-72(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rsi
	movl	-136(%rbp), %edx
	movq	%rsp, %rax
	movl	%edi, (%rax)
	leaq	-128(%rbp), %rdi
	callq	random_augment_args@PLT
	movl	-104(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	-116(%rbp), %r10d
	movl	-112(%rbp), %r11d
	movl	-108(%rbp), %ebx
	movl	-72(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movl	-168(%rbp), %esi
	movq	%rsp, %rax
	movl	%ebx, 16(%rax)
	movl	%r11d, 8(%rax)
	movl	%r10d, (%rax)
	callq	rotate_crop_image@PLT
	movl	%edx, -184(%rbp)
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -152(%rbp)
	movb	$0, %al
	callq	rand@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -196(%rbp)
	cmpl	$0, -196(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -208(%rbp)
	movq	-216(%rbp), %rdi
	movl	-208(%rbp), %esi
	callq	flip_image@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movl	-152(%rbp), %eax
	movl	%eax, -224(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	movl	-224(%rbp), %esi
	callq	random_distort_image@PLT
                                        # kill: def $ecx killed $eax
	movq	-368(%rbp), %rax                # 8-byte Reload
	movl	-160(%rbp), %edx
	movq	24(%rax), %rax
	movslq	-68(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-64(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	16(%rbp), %ecx
	callq	get_segmentation_image@PLT
	movl	%edx, -256(%rbp)
	movq	%rax, -264(%rbp)
	movl	-256(%rbp), %eax
	movl	%eax, -240(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -380(%rbp)                # 4-byte Spill
	movl	40(%rbp), %esi
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	%ecx, -384(%rbp)                # 4-byte Spill
	cltd
	idivl	%esi
	movl	%eax, %ecx
	movl	-384(%rbp), %eax                # 4-byte Reload
	cltd
	idivl	%esi
	movl	%eax, %r8d
	movl	-120(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %r9d
	movl	-116(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %r10d
	movl	-112(%rbp), %eax
	cltd
	idivl	%esi
	movl	-380(%rbp), %edx                # 4-byte Reload
	movl	%eax, %r11d
	movl	-108(%rbp), %ebx
	movl	-240(%rbp), %eax
	movl	%eax, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rdi
	movl	-288(%rbp), %esi
	movq	%rsp, %rax
	movl	%ebx, 16(%rax)
	movl	%r11d, 8(%rax)
	movl	%r10d, (%rax)
	callq	rotate_crop_image@PLT
	movl	%edx, -304(%rbp)
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	-304(%rbp), %eax
	movl	%eax, -272(%rbp)
	cmpl	$0, -196(%rbp)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, -328(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -320(%rbp)
	movq	-328(%rbp), %rdi
	movl	-320(%rbp), %esi
	callq	flip_image@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-368(%rbp), %rax                # 8-byte Reload
	movl	-280(%rbp), %edx
	movq	8(%rax), %rax
	movslq	-68(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	movq	%rax, -344(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -336(%rbp)
	movq	-344(%rbp), %rdi
	movl	-336(%rbp), %esi
	callq	free_image@PLT
	movq	-248(%rbp), %rax
	movq	%rax, -360(%rbp)
	movl	-240(%rbp), %eax
	movl	%eax, -352(%rbp)
	movq	-360(%rbp), %rdi
	movl	-352(%rbp), %esi
	callq	free_image@PLT
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-64(%rbp), %rdi
	callq	free@PLT
                                        # kill: def $ecx killed $eax
	movq	-376(%rbp), %rax                # 8-byte Reload
	addq	$408, %rsp                      # imm = 0x198
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym load_image_color
	.addrsig_sym random_augment_args
	.addrsig_sym rotate_crop_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym random_distort_image
	.addrsig_sym get_segmentation_image
	.addrsig_sym free_image
	.addrsig_sym free