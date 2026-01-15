	.text
	.globl	gen_var_binding                 # -- Begin function gen_var_binding
	.p2align	4, 0x90
gen_var_binding:                        # @gen_var_binding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	STOREV(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	gen_op_unbound@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	-20(%rbp), %edx
	callq	gen_destructure@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STOREV
	.p2align	2
STOREV:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_destructure
	.addrsig_sym gen_op_unbound
	.addrsig_sym STOREV