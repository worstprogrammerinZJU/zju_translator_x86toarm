	.text
	.globl	spiClockDivToFrequency          // -- Begin function spiClockDivToFrequency
	.p2align	2
	.type	spiClockDivToFrequency,@function
spiClockDivToFrequency:                 // @spiClockDivToFrequency
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	bl	getApbFrequency
	str	w0, [sp, #8]
	ldur	w8, [x29, #-4]
	add	x0, sp, #4
	str	w8, [sp, #4]
	bl	ClkRegToFreq
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	spiClockDivToFrequency, .Lfunc_end0-spiClockDivToFrequency
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getApbFrequency
	.addrsig_sym ClkRegToFreq