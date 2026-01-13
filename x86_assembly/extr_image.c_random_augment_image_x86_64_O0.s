	.text
	.globl	random_augment_image            # -- Begin function random_augment_image
	.p2align	4, 0x90
random_augment_image:                   # @random_augment_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-4(%rbp), %esi
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	leaq	-56(%rbp), %rdi
	callq	random_augment_args@PLT
	movl	-4(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %r10d
	movl	-56(%rbp), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	rotate_crop_image@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym random_augment_args
	.addrsig_sym rotate_crop_image