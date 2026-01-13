	.text
	.p2align	4, 0x90                         # -- Begin function stbi__paeth
stbi__paeth:                            # @stbi__paeth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	subl	-8(%rbp), %edi
	callq	abs@PLT
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	subl	-12(%rbp), %edi
	callq	abs@PLT
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %edi
	subl	-16(%rbp), %edi
	callq	abs@PLT
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB0_3
# %bb.1:
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB0_3
# %bb.2:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB0_5
# %bb.4:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__paeth
	.addrsig_sym abs