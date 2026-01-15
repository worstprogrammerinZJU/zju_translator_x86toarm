	.text
	.p2align	4, 0x90                         # -- Begin function simple
simple:                                 # @simple
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	ONE(%rip), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	TWO(%rip), %esi
	movl	$2, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ONE
	.p2align	2
ONE:
	.long	0                               # 0x0
	.globl	TWO
	.p2align	2
TWO:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym simple
	.addrsig_sym expect
	.addrsig_sym ONE
	.addrsig_sym TWO