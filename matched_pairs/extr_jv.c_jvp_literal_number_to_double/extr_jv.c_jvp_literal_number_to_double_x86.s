	.text
	.p2align	4, 0x90                         # -- Begin function jvp_literal_number_to_double
jvp_literal_number_to_double:           # @jvp_literal_number_to_double
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	callq	JVP_HAS_FLAGS@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jvp_dec_number_ptr@PLT
	movq	%rax, -16(%rbp)
	movq	BIN64_DEC_PRECISION(%rip), %rcx
	movq	DEC_NUMBER_STRING_GUARD(%rip), %rdx
	leaq	1(%rcx,%rdx), %rax
	movq	%rsp, %rsi
	movq	%rsi, -32(%rbp)
	leaq	16(%rcx,%rdx), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -40(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	DEC_CONTEXT_TO_DOUBLE@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	decNumberReduce@PLT
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	leaq	-24(%rbp), %rdi
	callq	decNumberToString@PLT
	movb	$0, %al
	callq	tsd_dtoa_context_get@PLT
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edi
	leaq	-48(%rbp), %rdx
	callq	jvp_strtod@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.globl	BIN64_DEC_PRECISION
	.p2align	3
BIN64_DEC_PRECISION:
	.quad	0                               # 0x0
	.globl	DEC_NUMBER_STRING_GUARD
	.p2align	3
DEC_NUMBER_STRING_GUARD:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_to_double
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym decNumberReduce
	.addrsig_sym DEC_CONTEXT_TO_DOUBLE
	.addrsig_sym decNumberToString
	.addrsig_sym jvp_strtod
	.addrsig_sym tsd_dtoa_context_get
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL
	.addrsig_sym BIN64_DEC_PRECISION
	.addrsig_sym DEC_NUMBER_STRING_GUARD