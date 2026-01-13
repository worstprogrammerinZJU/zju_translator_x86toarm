	.text
	.p2align	4, 0x90                         # -- Begin function nstime
nstime:                                 # @nstime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	CLOCK_MONOTONIC(%rip), %edi
	leaq	-16(%rbp), %rsi
	callq	clock_gettime@PLT
	movq	-8(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	imull	Second(%rip), %eax
	addl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CLOCK_MONOTONIC
	.p2align	2
CLOCK_MONOTONIC:
	.long	0                               # 0x0
	.globl	Second
	.p2align	2
Second:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym clock_gettime
	.addrsig_sym CLOCK_MONOTONIC
	.addrsig_sym Second