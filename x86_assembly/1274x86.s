	.text
	.p2align	4, 0x90                         # -- Begin function jvp_invalid_free
jvp_invalid_free:                       # @jvp_invalid_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	JV_KIND_INVALID(%rip), %esi
	movq	-8(%rbp), %rdi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	JVP_FLAGS_INVALID_MSG(%rip), %esi
	movq	-8(%rbp), %rdi
	callq	JVP_HAS_FLAGS@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	jvp_refcnt_dec@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rdi
	callq	jv_mem_free@PLT
.LBB0_3:
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
	.addrsig_sym jvp_invalid_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JVP_FLAGS_INVALID_MSG