	.text
	.globl	resize_min                      # -- Begin function resize_min
	.p2align	4, 0x90
resize_min:                             # @resize_min
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movl	-28(%rbp), %eax
	imull	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-24(%rbp), %eax
	imull	-20(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_3:
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB0_6
# %bb.4:
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rdi
	callq	resize_image@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_image