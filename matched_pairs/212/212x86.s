	.text
	.p2align	4, 0x90                         # -- Begin function type_error
type_error:                             # @type_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	movl	%eax, %edi
	callq	jv_kind_name@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	leaq	-31(%rbp), %rsi
	movl	$15, %edx
	callq	jv_dump_string_trunc@PLT
	movl	-40(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	leaq	.L.str(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -36(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s (%s) %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym type_error
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_kind_name
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_dump_string_trunc
	.addrsig_sym jv_copy
	.addrsig_sym jv_free