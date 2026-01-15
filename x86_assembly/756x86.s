	.text
	.globl	getXtalFrequencyMhz             # -- Begin function getXtalFrequencyMhz
	.p2align	4, 0x90
getXtalFrequencyMhz:                    # @getXtalFrequencyMhz
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	rtc_clk_xtal_freq_get@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rtc_clk_xtal_freq_get