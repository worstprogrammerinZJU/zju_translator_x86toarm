	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function recursive
.LCPI0_0:
	.quad	0x4024000000000000              # double 10
.LCPI0_1:
	.quad	0x400aa3d70a3d70a4              # double 3.3300000000000001
	.text
	.globl	recursive
	.p2align	4, 0x90
recursive:                              # @recursive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB0_2
# %bb.1:
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	recursive
	movsd	%xmm0, -8(%rbp)
.LBB0_3:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym recursive