	.text
	.p2align	4, 0x90                         # -- Begin function finish_bitfield
finish_bitfield:                        # @finish_bitfield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	$7, %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym finish_bitfield