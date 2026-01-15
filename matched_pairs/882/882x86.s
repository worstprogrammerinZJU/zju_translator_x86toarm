	.text
	.globl	jq_teardown                     # -- Begin function jq_teardown
	.p2align	4, 0x90
jq_teardown:                            # @jq_teardown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	jq_reset@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	bytecode_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rdi
	callq	jv_mem_free@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_reset
	.addrsig_sym bytecode_free
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free