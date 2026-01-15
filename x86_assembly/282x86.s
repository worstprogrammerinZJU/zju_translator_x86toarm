	.text
	.globl	gen_call                        # -- Begin function gen_call
	.p2align	4, 0x90
gen_call:                               # @gen_call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movl	CALL_JQ(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	gen_op_unbound@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	block_count_actuals@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CALL_JQ
	.p2align	2
CALL_JQ:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_op_unbound
	.addrsig_sym block_count_actuals
	.addrsig_sym CALL_JQ