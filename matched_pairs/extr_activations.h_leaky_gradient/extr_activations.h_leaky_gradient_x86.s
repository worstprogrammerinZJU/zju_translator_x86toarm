	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function leaky_gradient
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.p2align	4, 0x90
leaky_gradient:                         # @leaky_gradient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm3           # xmm3 = mem[0],zero
	movsd	%xmm3, -24(%rbp)                # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	ja	.LBB0_2
# %bb.1:
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
.LBB0_2:
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym leaky_gradient