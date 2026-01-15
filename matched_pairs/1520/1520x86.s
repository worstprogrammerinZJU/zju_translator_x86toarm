	.text
	.p2align	4, 0x90                         # -- Begin function path_is_relative
path_is_relative:                       # @path_is_relative
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$47, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym path_is_relative
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free