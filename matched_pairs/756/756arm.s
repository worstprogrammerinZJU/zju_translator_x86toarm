	.text
	.globl	getXtalFrequencyMhz             // -- Begin function getXtalFrequencyMhz
	.p2align	2
	.type	getXtalFrequencyMhz,@function
getXtalFrequencyMhz:                    // @getXtalFrequencyMhz
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	rtc_clk_xtal_freq_get
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	getXtalFrequencyMhz, .Lfunc_end0-getXtalFrequencyMhz
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rtc_clk_xtal_freq_get