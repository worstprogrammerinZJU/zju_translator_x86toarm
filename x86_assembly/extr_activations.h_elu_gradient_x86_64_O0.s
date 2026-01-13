	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function elu_gradient
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.p2align	4, 0x90
elu_gradient:                           # @elu_gradient
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
	cvtsi2ss	%eax, %xmm1
	xorps	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	addss	-4(%rbp), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym elu_gradient