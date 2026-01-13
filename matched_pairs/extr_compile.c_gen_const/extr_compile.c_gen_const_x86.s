	.text
	.globl	gen_const                       # -- Begin function gen_const
	.p2align	4, 0x90
gen_const:                              # @gen_const
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	LOADK(%rip), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %edi
	andl	OP_HAS_CONSTANT(%rip), %edi
	callq	assert@PLT
	movl	LOADK(%rip), %edi
	callq	inst_new@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	inst_block@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOADK
	.p2align	2
LOADK:
	.long	0                               # 0x0
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym LOADK
	.addrsig_sym OP_HAS_CONSTANT