	.text
	.globl	ledcReadFreq                    // -- Begin function ledcReadFreq
	.p2align	2
	.type	ledcReadFreq,@function
ledcReadFreq:                           // @ledcReadFreq
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	bl	ledcRead
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	movi	d0, #0000000000000000
	str	d0, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	ldr	w0, [sp, #4]
	bl	_ledcTimerRead
	str	d0, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ledcReadFreq, .Lfunc_end0-ledcReadFreq
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ledcRead
	.addrsig_sym _ledcTimerRead