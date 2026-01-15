	.text
	.globl	read_int                        # -- Begin function read_int
	.p2align	4, 0x90
read_int:                               # @read_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-8(%rbp), %edi
	leaq	-12(%rbp), %rsi
	movl	$4, %edx
	callq	read@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.LBB0_2
# %bb.1:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read