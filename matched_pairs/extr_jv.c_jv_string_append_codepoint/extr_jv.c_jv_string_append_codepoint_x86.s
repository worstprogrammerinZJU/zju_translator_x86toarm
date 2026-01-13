	.text
	.globl	jv_string_append_codepoint      # -- Begin function jv_string_append_codepoint
	.p2align	4, 0x90
jv_string_append_codepoint:             # @jv_string_append_codepoint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edi
	leaq	-13(%rbp), %rsi
	callq	jvp_utf8_encode@PLT
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %edi
	leaq	-13(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	jvp_string_append@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_utf8_encode
	.addrsig_sym jvp_string_append