	.text
	.globl	decFloatVersion                 # -- Begin function decFloatVersion
	.p2align	4, 0x90
decFloatVersion:                        # @decFloatVersion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	DECVERSION(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECVERSION
	.p2align	3
DECVERSION:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DECVERSION