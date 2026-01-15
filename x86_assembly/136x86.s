	.text
	.p2align	4, 0x90                         # -- Begin function f_debug
f_debug:                                # @f_debug
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	callq	jq_get_debug_cb@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	movq	-40(%rbp), %rax                 # 8-byte Reload
	callq	*%rax
.LBB0_2:
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_debug
	.addrsig_sym jq_get_debug_cb
	.addrsig_sym jv_copy