	.text
	.globl	ledcWriteTone                   // -- Begin function ledcWriteTone
	.p2align	2
	.type	ledcWriteTone,@function
ledcWriteTone:                          // @ledcWriteTone
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	str	d0, [sp, #8]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #15
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	movi	d0, #0000000000000000
	stur	d0, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	d0, [sp, #8]
	fcmp	d0, #0.0
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-12]
	mov	w1, wzr
	bl	ledcWrite
	movi	d0, #0000000000000000
	stur	d0, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldur	w0, [x29, #-12]
	ldr	d0, [sp, #8]
	mov	w1, #10
	bl	_ledcSetupTimerFreq
	str	d0, [sp]
	ldur	w0, [x29, #-12]
	mov	w1, #511
	bl	ledcWrite
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ledcWriteTone, .Lfunc_end0-ledcWriteTone
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ledcWrite
	.addrsig_sym _ledcSetupTimerFreq