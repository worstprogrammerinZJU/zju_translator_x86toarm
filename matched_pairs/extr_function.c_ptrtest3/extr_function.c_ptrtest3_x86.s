	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function ptrtest3
.LCPI0_0:
	.long	0x40000000                      # float 2
	.text
	.globl	ptrtest3
	.p2align	4, 0x90
ptrtest3:                               # @ptrtest3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig