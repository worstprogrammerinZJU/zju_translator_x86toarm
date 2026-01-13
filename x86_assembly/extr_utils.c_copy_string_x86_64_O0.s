	.text
	.globl	copy_string                     # -- Begin function copy_string
	.p2align	4, 0x90
copy_string:                            # @copy_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, %rdi
	addq	$1, %rdi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	addq	$1, %rdx
	callq	strncpy@PLT
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym strlen
	.addrsig_sym strncpy