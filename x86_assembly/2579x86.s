	.text
	.globl	rand_int                        # -- Begin function rand_int
	.p2align	4, 0x90
rand_int:                               # @rand_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB0_2:
	movb	$0, %al
	callq	rand@PLT
	movl	-8(%rbp), %ecx
	subl	-4(%rbp), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	addl	-4(%rbp), %edx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand