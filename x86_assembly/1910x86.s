	.text
	.p2align	4, 0x90                         # -- Begin function read_oldstyle_param_type
read_oldstyle_param_type:               # @read_oldstyle_param_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	read_oldstyle_param_args@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	update_oldstyle_param_type@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_oldstyle_param_type
	.addrsig_sym read_oldstyle_param_args
	.addrsig_sym update_oldstyle_param_type