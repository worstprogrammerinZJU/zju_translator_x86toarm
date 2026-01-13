	.text
	.p2align	4, 0x90                         # -- Begin function stbi__malloc_mad2
stbi__malloc_mad2:                      # @stbi__malloc_mad2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	stbi__mad2sizes_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %edi
	imull	-16(%rbp), %edi
	addl	-20(%rbp), %edi
	callq	stbi__malloc@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__malloc_mad2
	.addrsig_sym stbi__mad2sizes_valid
	.addrsig_sym stbi__malloc