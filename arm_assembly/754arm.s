	.text
	.globl	getApbFrequency                 // -- Begin function getApbFrequency
	.p2align	2
	.type	getApbFrequency,@function
getApbFrequency:                        // @getApbFrequency
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sub	x0, x29, #4
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	rtc_clk_cpu_freq_get_config
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	calculateApb
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	getApbFrequency, .Lfunc_end0-getApbFrequency
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rtc_clk_cpu_freq_get_config
	.addrsig_sym calculateApb