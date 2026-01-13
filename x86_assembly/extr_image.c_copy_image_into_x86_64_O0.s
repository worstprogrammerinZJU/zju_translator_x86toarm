	.text
	.globl	copy_image_into                 # -- Begin function copy_image_into
	.p2align	4, 0x90
copy_image_into:                        # @copy_image_into
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-4(%rbp), %esi
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-8(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcpy