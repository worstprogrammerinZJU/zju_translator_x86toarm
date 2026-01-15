	.text
	.globl	sum                             # -- Begin function sum
	.p2align	4, 0x90
sum:                                    # @sum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig