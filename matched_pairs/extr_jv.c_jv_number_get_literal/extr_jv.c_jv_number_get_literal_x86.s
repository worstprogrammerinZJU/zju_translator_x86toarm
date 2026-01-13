	.text
	.globl	jv_number_get_literal           # -- Begin function jv_number_get_literal
	.p2align	4, 0x90
jv_number_get_literal:                  # @jv_number_get_literal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	JV_KIND_NUMBER(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-12(%rbp), %edi
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	callq	JVP_HAS_FLAGS@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %edi
	callq	jvp_literal_number_literal@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	$0, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.long	0                               # 0x0
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_literal_number_literal
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL