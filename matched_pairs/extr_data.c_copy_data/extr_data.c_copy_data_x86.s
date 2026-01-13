	.text
	.globl	copy_data                       # -- Begin function copy_data
	.p2align	4, 0x90
copy_data:                              # @copy_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	36(%rax), %ecx
	movl	%ecx, 36(%rdi)
	movl	32(%rax), %ecx
	movl	%ecx, 32(%rdi)
	movq	$0, 24(%rdi)
	movl	20(%rax), %ecx
	movl	%ecx, 20(%rdi)
	movl	16(%rax), %ecx
	movl	%ecx, 16(%rdi)
	movq	8(%rax), %rdi
	callq	copy_matrix@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 8(%rdi)
	movq	(%rax), %rdi
	callq	copy_matrix@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	%rcx, (%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_matrix