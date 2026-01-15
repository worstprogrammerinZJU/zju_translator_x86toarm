	.text
	.p2align	4, 0x90                         # -- Begin function read_struct_initializer
read_struct_initializer:                # @read_struct_initializer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	read_struct_initializer_sub@PLT
	movq	-8(%rbp), %rdi
	callq	sort_inits@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_initializer
	.addrsig_sym read_struct_initializer_sub
	.addrsig_sym sort_inits