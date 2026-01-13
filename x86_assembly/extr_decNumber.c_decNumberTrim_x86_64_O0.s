	.text
	.globl	decNumberTrim                   # -- Begin function decNumberTrim
	.p2align	4, 0x90
decNumberTrim:                          # @decNumberTrim
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	DEC_INIT_BASE(%rip), %esi
	leaq	-16(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	leaq	-12(%rbp), %r8
	callq	decTrim@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_INIT_BASE
	.p2align	2
DEC_INIT_BASE:
	.long	0                               # 0x0
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.long	0                               # 0x0
	.globl	DECUNRESU
	.p2align	2
DECUNRESU:
	.long	0                               # 0x0
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decTrim
	.addrsig_sym DEC_INIT_BASE