	.text
	.globl	sec                             # -- Begin function sec
	.p2align	4, 0x90
sec:                                    # @sec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	cvtsi2ssq	-8(%rbp), %xmm0
	divss	CLOCKS_PER_SEC(%rip), %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CLOCKS_PER_SEC
	.p2align	2
CLOCKS_PER_SEC:
	.long	0x00000000                      # float 0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CLOCKS_PER_SEC