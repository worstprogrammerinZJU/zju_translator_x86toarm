	.text
	.globl	random_crop_image               # -- Begin function random_crop_image
	.p2align	4, 0x90
random_crop_image:                      # @random_crop_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movslq	-36(%rbp), %rax
	subq	%rax, %rsi
	xorl	%edi, %edi
	movl	%edi, -52(%rbp)                 # 4-byte Spill
	callq	rand_int@PLT
	movl	-52(%rbp), %edi                 # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rsi
	movslq	-40(%rbp), %rax
	subq	%rax, %rsi
	callq	rand_int@PLT
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	crop_image@PLT
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_int
	.addrsig_sym crop_image