	.text
	.globl	spiClockDivToFrequency          # -- Begin function spiClockDivToFrequency
	.p2align	4, 0x90
spiClockDivToFrequency:                 # @spiClockDivToFrequency
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movb	$0, %al
	callq	getApbFrequency@PLT
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	ClkRegToFreq@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getApbFrequency
	.addrsig_sym ClkRegToFreq