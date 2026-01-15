	.text
	.globl	gen_try                         # -- Begin function gen_try
	.p2align	4, 0x90
gen_try:                                # @gen_try
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_3
# %bb.1:
	cmpl	$0, -24(%rbp)
	jne	.LBB0_3
# %bb.2:
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movq	%rax, -40(%rbp)
	movl	POP(%rip), %edi
	callq	gen_op_simple@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	BLOCK@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_3:
	movl	JUMP(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	gen_op_target@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	BLOCK@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	FORK_OPT(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	gen_op_target@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	BLOCK@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$80, %rsp
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
	.globl	JUMP
	.p2align	2
JUMP:
	.long	0                               # 0x0
	.globl	FORK_OPT
	.p2align	2
FORK_OPT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_op_target
	.addrsig_sym DUP
	.addrsig_sym POP
	.addrsig_sym JUMP
	.addrsig_sym FORK_OPT