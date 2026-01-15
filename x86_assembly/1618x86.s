	.text
	.p2align	4, 0x90                         # -- Begin function rotate
rotate:                                 # @rotate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	subl	$1, %esi
	callq	invert@PLT
	movq	-8(%rbp), %rdi
	movslq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %esi
	subl	-16(%rbp), %esi
	callq	invert@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	invert@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rotate
	.addrsig_sym invert