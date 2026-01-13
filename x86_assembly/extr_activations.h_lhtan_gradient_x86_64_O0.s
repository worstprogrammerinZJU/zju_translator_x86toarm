	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function lhtan_gradient
.LCPI0_0:
	.long	0x3f800000                      # float 1
.LCPI0_1:
	.long	0x3a83126f                      # float 0.00100000005
	.text
	.p2align	4, 0x90
lhtan_gradient:                         # @lhtan_gradient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_3
# %bb.1:
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rbp), %xmm0
	jbe	.LBB0_3
# %bb.2:
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_4:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lhtan_gradient