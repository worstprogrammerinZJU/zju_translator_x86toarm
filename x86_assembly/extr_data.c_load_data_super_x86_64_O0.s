	.text
	.globl	load_data_super                 # -- Begin function load_data_super
	.p2align	4, 0x90
load_data_super:                        # @load_data_super
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	16(%rbp), %eax
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	get_random_paths@PLT
	movq	%rax, -8(%rbp)
.LBB0_2:
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	$0, 32(%rax)
	movl	-12(%rbp), %ecx
	movl	%ecx, 16(%rax)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 24(%rax)
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, 20(%rax)
	movl	-12(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 8(%rax)
	movl	-20(%rbp), %ecx
	imull	16(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	16(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, 4(%rax)
	movl	$0, -28(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	load_image_color@PLT
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %esi
	imull	16(%rbp), %esi
	movl	-24(%rbp), %edx
	imull	16(%rbp), %edx
	movl	-32(%rbp), %edi
	callq	random_crop_image@PLT
	movl	%eax, -40(%rbp)
	movb	$0, %al
	callq	rand@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %edi
	callq	flip_image@PLT
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %edi
	callq	resize_image@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %esi
	movq	24(%rax), %rcx
	movslq	-28(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movl	-40(%rbp), %edx
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-32(%rbp), %edi
	callq	free_image@PLT
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	cmpl	$0, -16(%rbp)
	je	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rdi
	callq	free@PLT
.LBB0_10:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym calloc
	.addrsig_sym load_image_color
	.addrsig_sym random_crop_image
	.addrsig_sym rand
	.addrsig_sym flip_image
	.addrsig_sym resize_image
	.addrsig_sym free_image
	.addrsig_sym free