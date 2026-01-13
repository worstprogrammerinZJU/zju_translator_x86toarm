	.text
	.p2align	4, 0x90                         # -- Begin function jvp_number_free
jvp_number_free:                        # @jvp_number_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	JV_KIND_NUMBER(%rip), %esi
	movl	-8(%rbp), %edi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	movl	-8(%rbp), %edi
	callq	JVP_HAS_FLAGS@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.1:
	movl	-8(%rbp), %edi
	callq	jvp_refcnt_dec@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:
	movl	-8(%rbp), %edi
	callq	jvp_literal_number_ptr@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	jv_mem_free@PLT
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	jv_mem_free@PLT
.LBB0_5:
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
	.addrsig_sym jvp_number_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jvp_literal_number_ptr
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL