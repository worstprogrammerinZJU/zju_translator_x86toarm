	.text
	.globl	jv_invalid_get_msg              # -- Begin function jv_invalid_get_msg
	.p2align	4, 0x90
jv_invalid_get_msg:                     # @jv_invalid_get_msg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	JV_KIND_INVALID(%rip), %esi
	movq	-16(%rbp), %rdi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	JVP_FLAGS_INVALID_MSG(%rip), %esi
	movq	-16(%rbp), %rdi
	callq	JVP_HAS_FLAGS@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	jv_null@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	jv_free@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rsp
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
	.addrsig_sym jv_copy
	.addrsig_sym jv_null
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JVP_FLAGS_INVALID_MSG