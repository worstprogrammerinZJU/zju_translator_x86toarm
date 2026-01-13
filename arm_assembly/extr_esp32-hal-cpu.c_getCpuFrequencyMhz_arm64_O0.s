	.text
	.globl	getCpuFrequencyMhz              // -- Begin function getCpuFrequencyMhz
	.p2align	2
	.type	getCpuFrequencyMhz,@function
getCpuFrequencyMhz:                     // @getCpuFrequencyMhz
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sub	x0, x29, #4
	bl	rtc_clk_cpu_freq_get_config
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	getCpuFrequencyMhz, .Lfunc_end0-getCpuFrequencyMhz
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rtc_clk_cpu_freq_get_config