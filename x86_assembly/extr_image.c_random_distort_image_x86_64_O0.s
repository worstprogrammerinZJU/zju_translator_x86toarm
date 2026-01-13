	.text
	.globl	random_distort_image            # -- Begin function random_distort_image
	.p2align	4, 0x90
random_distort_image:                   # @random_distort_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	callq	rand_uniform@PLT
	movss	%xmm0, -20(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	rand_scale@PLT
	movss	%xmm0, -24(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	rand_scale@PLT
	movss	%xmm0, -28(%rbp)
	movl	-4(%rbp), %edi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	callq	distort_image@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_uniform
	.addrsig_sym rand_scale
	.addrsig_sym distort_image