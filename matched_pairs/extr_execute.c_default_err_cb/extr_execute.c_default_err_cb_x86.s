	.text
	.p2align	4, 0x90                         # -- Begin function default_err_cb
default_err_cb:                         # @default_err_cb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jq_format_error@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_err_cb
	.addrsig_sym jq_format_error
	.addrsig_sym fprintf
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free