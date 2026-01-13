	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function temperatureRead
.LCPI0_0:
	.quad	0x3ffccccccccccccd              # double 1.8
	.text
	.globl	temperatureRead
	.p2align	4, 0x90
temperatureRead:                        # @temperatureRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	temprature_sens_read@PLT
	subl	$32, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym temprature_sens_read