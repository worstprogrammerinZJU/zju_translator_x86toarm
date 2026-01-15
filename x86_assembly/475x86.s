	.text
	.globl	ctfail                          # -- Begin function ctfail
	.p2align	4, 0x90
ctfail:                                 # @ctfail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, fail(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fail
	.p2align	2
fail:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fail