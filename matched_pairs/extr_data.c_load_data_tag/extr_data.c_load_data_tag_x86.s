	.text
	.globl	load_data_tag                   # -- Begin function load_data_tag
	.p2align	4, 0x90
load_data_tag:                          # @load_data_tag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movss	%xmm1, -32(%rbp)
	movss	%xmm2, -36(%rbp)
	movss	%xmm3, -40(%rbp)
	movss	%xmm4, -44(%rbp)
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
	movl	$32, %edx
	callq	memset@PLT
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	24(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	24(%rbp), %ecx
	movl	%ecx, 4(%rax)
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	16(%rbp), %ecx
	movl	24(%rbp), %r8d
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm4                # xmm4 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	callq	load_image_augment_paths@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	load_tags_paths@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 8(%rax)
	cmpl	$0, -16(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	free@PLT
.LBB0_4:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym load_image_augment_paths
	.addrsig_sym load_tags_paths
	.addrsig_sym free