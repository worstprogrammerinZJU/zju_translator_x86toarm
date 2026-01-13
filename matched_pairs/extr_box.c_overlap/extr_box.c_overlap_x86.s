	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function overlap
.LCPI0_0:
	.long	0x40000000                      # float 2
	.text
	.globl	overlap
	.p2align	4, 0x90
overlap:                                # @overlap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-24(%rbp), %xmm0
	jbe	.LBB0_2
# %bb.1:
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
.LBB0_3:
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_5
# %bb.4:
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
.LBB0_6:
	movss	-48(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -40(%rbp)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig