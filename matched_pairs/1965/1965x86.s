	.text
	.p2align	4, 0x90                         # -- Begin function gen_index_opt
gen_index_opt:                          # @gen_index_opt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	gen_subexp@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	INDEX_OPT(%rip), %edi
	callq	gen_op_simple@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	BLOCK@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INDEX_OPT
	.p2align	2
INDEX_OPT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_index_opt
	.addrsig_sym BLOCK
	.addrsig_sym gen_subexp
	.addrsig_sym gen_op_simple
	.addrsig_sym INDEX_OPT