	.text
	.globl	copy_image                      # -- Begin function copy_image
	.p2align	4, 0x90
copy_image:                             # @copy_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %eax
	imull	%eax, %edi
	movl	-24(%rbp), %eax
	imull	%eax, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	imull	%eax, %edx
	movl	-24(%rbp), %eax
	imull	%eax, %edx
	shll	$2, %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym memcpy