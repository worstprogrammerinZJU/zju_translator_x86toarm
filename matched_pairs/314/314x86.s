	.text
	.p2align	4, 0x90                         # -- Begin function gen_wildvar_binding
gen_wildvar_binding:                    # @gen_wildvar_binding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	STOREV(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	gen_op_unbound@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	movl	OP_HAS_VARIABLE(%rip), %edx
	orl	OP_BIND_WILDCARD(%rip), %edx
	callq	block_bind@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movl	-24(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	BLOCK@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.long	0                               # 0x0
	.globl	STOREV
	.p2align	2
STOREV:
	.long	0                               # 0x0
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.long	0                               # 0x0
	.globl	OP_BIND_WILDCARD
	.p2align	2
OP_BIND_WILDCARD:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_wildvar_binding
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym block_bind
	.addrsig_sym gen_op_unbound
	.addrsig_sym DUP
	.addrsig_sym STOREV
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym OP_BIND_WILDCARD