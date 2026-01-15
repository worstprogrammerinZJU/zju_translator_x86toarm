	.text
	.globl	gen_cond                        # -- Begin function gen_cond
	.p2align	4, 0x90
gen_cond:                               # @gen_cond
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %edi
	callq	gen_subexp@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	POP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	POP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, %edi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	POP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, %edi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	gen_condbranch@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	-16(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
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
	.globl	POP
	.p2align	2
POP:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_subexp
	.addrsig_sym gen_condbranch
	.addrsig_sym DUP
	.addrsig_sym POP