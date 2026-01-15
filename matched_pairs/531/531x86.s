	.text
	.globl	load_data_captcha_encode        # -- Begin function load_data_captcha_encode
	.p2align	4, 0x90
load_data_captcha_encode:               # @load_data_captcha_encode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
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
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	load_image_paths@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	$17100, (%rax)                  # imm = 0x42CC
	movl	(%rax), %ecx
	movl	%ecx, 4(%rax)
	cmpl	$0, -16(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	free@PLT
.LBB0_4:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym load_image_paths
	.addrsig_sym free