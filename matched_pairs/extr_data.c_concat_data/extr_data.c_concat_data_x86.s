	.text
	.globl	concat_data                     # -- Begin function concat_data
	.p2align	4, 0x90
concat_data:                            # @concat_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	leaq	56(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$1, (%rdi)
	movq	24(%rcx), %rdi
	movq	24(%rax), %rsi
	callq	concat_matrix@PLT
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	16(%rcx), %rdi
	movq	16(%rax), %rsi
	callq	concat_matrix@PLT
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movl	8(%rcx), %edx
	movl	%edx, 8(%rdi)
	movl	4(%rcx), %ecx
	movl	%ecx, 4(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym concat_matrix