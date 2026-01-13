	.text
	.globl	load_data_augment               # -- Begin function load_data_augment
	.p2align	4, 0x90
load_data_augment:                      # @load_data_augment
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movq	16(%rbp), %rax
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movss	%xmm2, -40(%rbp)
	movss	%xmm3, -44(%rbp)
	movss	%xmm4, -48(%rbp)
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
	movq	$0, 16(%rax)
	movl	40(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	40(%rbp), %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	24(%rbp), %edx
	movl	32(%rbp), %ecx
	movl	40(%rbp), %r8d
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm4                # xmm4 = mem[0],zero,zero,zero
	movl	48(%rbp), %r9d
	callq	load_image_augment_paths@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	16(%rbp), %r8
	callq	load_labels_paths@PLT
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
	.addrsig_sym load_labels_paths
	.addrsig_sym free