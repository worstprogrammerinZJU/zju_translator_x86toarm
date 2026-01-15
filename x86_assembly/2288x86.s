	.text
	.p2align	4, 0x90                         # -- Begin function stbi__skip
stbi__skip:                             # @stbi__skip
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_7
.LBB0_2:
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_6
# %bb.3:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	subq	(%rcx), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	-12(%rbp), %esi
	subl	-16(%rbp), %esi
	callq	*%rax
	jmp	.LBB0_7
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
.LBB0_7:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__skip