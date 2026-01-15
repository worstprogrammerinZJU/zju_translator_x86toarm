	.text
	.p2align	4, 0x90                         # -- Begin function jvp_dec_number_ptr
jvp_dec_number_ptr:                     # @jvp_dec_number_ptr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	movq	-8(%rbp), %rdi
	callq	JVP_HAS_FLAGS@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL