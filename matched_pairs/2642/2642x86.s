	.text
	.p2align	4, 0x90                         # -- Begin function moveresv
moveresv:                               # @moveresv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, 4(%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym moveresv