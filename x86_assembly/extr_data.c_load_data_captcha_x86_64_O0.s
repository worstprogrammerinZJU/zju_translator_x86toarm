	.text
	.globl	load_data_captcha               # -- Begin function load_data_captcha
	.p2align	4, 0x90
load_data_captcha:                      # @load_data_captcha
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
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
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	16(%rbp), %ecx
	callq	load_image_paths@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 8(%rax)
	movl	-12(%rbp), %edi
	movl	-20(%rbp), %esi
	imull	NUMCHARS(%rip), %esi
	callq	make_matrix@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$0, -36(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movl	-20(%rbp), %esi
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	callq	fill_truth_captcha@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	cmpl	$0, -16(%rbp)
	je	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rdi
	callq	free@PLT
.LBB0_8:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NUMCHARS
	.p2align	2
NUMCHARS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym load_image_paths
	.addrsig_sym make_matrix
	.addrsig_sym fill_truth_captcha
	.addrsig_sym free
	.addrsig_sym NUMCHARS