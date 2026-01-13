	.text
	.globl	gen_param                       # -- Begin function gen_param
	.p2align	4, 0x90
gen_param:                              # @gen_param
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	CLOSURE_PARAM(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	gen_op_unbound@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CLOSURE_PARAM
	.p2align	2
CLOSURE_PARAM:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_op_unbound
	.addrsig_sym CLOSURE_PARAM