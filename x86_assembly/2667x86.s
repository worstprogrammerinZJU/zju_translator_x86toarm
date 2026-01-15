	.text
	.p2align	4, 0x90                         # -- Begin function entry_index
entry_index:                            # @entry_index
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -36(%rbp)
	movl	-20(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	movl	-4(%rbp), %edx
	addl	$4, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-12(%rbp), %ecx
	addl	%ecx, %eax
	addl	-36(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym entry_index