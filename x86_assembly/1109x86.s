	.text
	.globl	letterbox_image_into            # -- Begin function letterbox_image_into
	.p2align	4, 0x90
letterbox_image_into:                   # @letterbox_image_into
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
	cvtsi2ssl	-20(%rbp), %xmm1
	cvtsi2ssl	-8(%rbp), %xmm0
	divss	%xmm0, %xmm1
	cvtsi2ssl	-24(%rbp), %xmm0
	cvtsi2ssl	-4(%rbp), %xmm2
	divss	%xmm2, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	imull	-20(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-8(%rbp), %eax
	imull	-24(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, -28(%rbp)
.LBB0_3:
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rdi
	callq	resize_image@PLT
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-44(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	embed_image@PLT
	movq	-40(%rbp), %rdi
	callq	free_image@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_image
	.addrsig_sym embed_image
	.addrsig_sym free_image