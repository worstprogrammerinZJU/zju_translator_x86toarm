	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function plse_gradient
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	0x3f847ae147ae147b              # double 0.01
.LCPI0_2:
	.quad	0x3fc0000000000000              # double 0.125
	.text
	.p2align	4, 0x90
plse_gradient:                          # @plse_gradient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movb	$1, %al
	xorps	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	movb	%al, -5(%rbp)                   # 1-byte Spill
	ja	.LBB0_2
# %bb.1:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	seta	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rbp)                # 8-byte Spill
	testb	$1, %al
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	jne	.LBB0_4
# %bb.3:
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
.LBB0_4:
	movsd	-16(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym plse_gradient