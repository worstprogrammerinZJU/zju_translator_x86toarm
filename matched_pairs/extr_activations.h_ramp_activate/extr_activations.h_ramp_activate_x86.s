	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function ramp_activate
.LCPI0_0:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.p2align	4, 0x90
ramp_activate:                          # @ramp_activate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ramp_activate