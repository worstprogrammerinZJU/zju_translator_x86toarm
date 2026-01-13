	.text
	.globl	jv_string_concat                # -- Begin function jv_string_concat
	.p2align	4, 0x90
jv_string_concat:                       # @jv_string_concat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jvp_string_ptr@PLT
	movl	%eax, %edi
	callq	jvp_string_length@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jvp_string_append@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_append
	.addrsig_sym jv_string_value
	.addrsig_sym jvp_string_length
	.addrsig_sym jvp_string_ptr
	.addrsig_sym jv_free