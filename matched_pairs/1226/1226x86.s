	.text
	.globl	jv_invalid_has_msg              # -- Begin function jv_invalid_has_msg
	.p2align	4, 0x90
jv_invalid_has_msg:                     # @jv_invalid_has_msg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_INVALID(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	movl	JVP_FLAGS_INVALID_MSG(%rip), %esi
	callq	JVP_HAS_FLAGS@PLT
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_INVALID
	.p2align	2
JV_KIND_INVALID:
	.long	0                               # 0x0
	.globl	JVP_FLAGS_INVALID_MSG
	.p2align	2
JVP_FLAGS_INVALID_MSG:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JVP_FLAGS_INVALID_MSG