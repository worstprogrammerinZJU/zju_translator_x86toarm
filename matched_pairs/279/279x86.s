	.text
	.globl	gen_and                         # -- Begin function gen_and
	.p2align	4, 0x90
gen_and:                                # @gen_and
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	POP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	gen_condbranch@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movl	POP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	gen_condbranch@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	BLOCK@PLT
	addq	$48, %rsp
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
	.addrsig_sym gen_condbranch
	.addrsig_sym gen_const
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym DUP
	.addrsig_sym POP