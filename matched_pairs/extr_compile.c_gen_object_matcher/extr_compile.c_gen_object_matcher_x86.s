	.text
	.globl	gen_object_matcher              # -- Begin function gen_object_matcher
	.p2align	4, 0x90
gen_object_matcher:                     # @gen_object_matcher
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %edi
	callq	gen_subexp@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	INDEX(%rip), %edi
	callq	gen_op_simple@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	-8(%rbp), %ecx
	callq	BLOCK@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.long	0                               # 0x0
	.globl	INDEX
	.p2align	2
INDEX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_subexp
	.addrsig_sym DUP
	.addrsig_sym INDEX