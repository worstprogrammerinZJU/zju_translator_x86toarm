	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function selu_gradient
.LCPI0_0:
	.quad	0x3ff0cfaacd9e83e4              # double 1.0507
.LCPI0_1:
	.quad	0x3ffc20e55d92575b              # double 1.75803124
	.text
	.p2align	4, 0x90
selu_gradient:                          # @selu_gradient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	-4(%rbp), %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm1
	movss	-4(%rbp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI0_1(%rip), %xmm3           # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
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
	.addrsig_sym selu_gradient