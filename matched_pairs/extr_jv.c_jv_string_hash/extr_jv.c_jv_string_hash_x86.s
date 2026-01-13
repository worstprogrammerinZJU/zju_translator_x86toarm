	.text
	.globl	jv_string_hash                  # -- Begin function jv_string_hash
	.p2align	4, 0x90
jv_string_hash:                         # @jv_string_hash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jvp_string_hash@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_string_hash
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING