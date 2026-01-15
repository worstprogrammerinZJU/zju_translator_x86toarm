	.text
	.p2align	2                               // -- Begin function _ledcTimerRead
	.type	_ledcTimerRead,@function
_ledcTimerRead:                         // @_ledcTimerRead
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	mov	w9, #8
	sdiv	w8, w8, w9
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-4]
	mov	w9, #2
	sdiv	w8, w8, w9
	mov	w10, #4
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-32]
	bl	LEDC_MUTEX_LOCK
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-32]
	bl	LEDC_TIMER
	str	x0, [sp, #48]
	str	x1, [sp, #56]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-16]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-32]
	bl	LEDC_TIMER
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldr	w8, [sp, #32]
	stur	w8, [x29, #-20]
	ldur	w0, [x29, #-28]
	ldur	w1, [x29, #-32]
	bl	LEDC_TIMER
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-24]
	bl	LEDC_MUTEX_UNLOCK
	mov	w8, #16960
	movk	w8, #15, lsl #16
	str	w8, [sp, #12]
	ldur	w8, [x29, #-24]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	getApbFrequency
	str	w0, [sp, #12]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]
	lsl	w8, w8, #8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	asr	w8, w8, w9
	scvtf	d0, w8
	ldur	d1, [x29, #-16]
	scvtf	d1, d1
	fdiv	d0, d0, d1
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	_ledcTimerRead, .Lfunc_end0-_ledcTimerRead
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ledcTimerRead
	.addrsig_sym LEDC_MUTEX_LOCK
	.addrsig_sym LEDC_TIMER
	.addrsig_sym LEDC_MUTEX_UNLOCK
	.addrsig_sym getApbFrequency