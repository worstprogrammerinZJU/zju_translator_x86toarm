	.text
	.globl	gen_both                        # -- Begin function gen_both
	.p2align	4, 0x90
gen_both:                               # @gen_both
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	JUMP(%rip), %edi
	callq	gen_op_targetlater@PLT
	movl	%eax, -12(%rbp)
	movl	FORK(%rip), %edi
	movl	-12(%rbp), %esi
	callq	gen_op_target@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edi
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	callq	BLOCK@PLT
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	inst_set_target@PLT
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JUMP
	.p2align	2
JUMP:
	.long	0                               # 0x0
	.globl	FORK
	.p2align	2
FORK:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_op_targetlater
	.addrsig_sym gen_op_target
	.addrsig_sym BLOCK
	.addrsig_sym inst_set_target
	.addrsig_sym JUMP
	.addrsig_sym FORK