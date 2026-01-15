	.text
	.globl	center_crop_image               # -- Begin function center_crop_image
	.p2align	4, 0x90
center_crop_image:                      # @center_crop_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	-28(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-16(%rbp), %rdi
	callq	crop_image@PLT
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rdi
	callq	resize_image@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdi
	callq	free_image@PLT
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym free_image