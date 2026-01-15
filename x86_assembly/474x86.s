	.text
	.globl	ctdir                           # -- Begin function ctdir
	.p2align	4, 0x90
ctdir:                                  # @ctdir
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	curdir(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	curdir
	.p2align	3
curdir:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym curdir