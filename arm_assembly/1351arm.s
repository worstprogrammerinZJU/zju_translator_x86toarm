	.text
	.p2align	2                               // -- Begin function lo0bits
	.type	lo0bits,@function
lo0bits:                                // @lo0bits
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp]
	ldr	w8, [sp]
	and	w8, w8, #0x7
	cbz	w8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp]
	tbz	w8, #0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #28]
	b	.LBB0_19
.LBB0_3:
	ldr	w8, [sp]
	tbz	w8, #1, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp]
	asr	w8, w8, #1
	ldr	x9, [sp, #8]
	str	w8, [x9]
	mov	w8, #1
	str	w8, [sp, #28]
	b	.LBB0_19
.LBB0_5:
	ldr	w8, [sp]
	asr	w8, w8, #2
	ldr	x9, [sp, #8]
	str	w8, [x9]
	mov	w8, #2
	str	w8, [sp, #28]
	b	.LBB0_19
.LBB0_6:
	str	wzr, [sp, #4]
	ldrh	w8, [sp]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #16
	str	w8, [sp, #4]
	ldr	w8, [sp]
	asr	w8, w8, #16
	str	w8, [sp]
	b	.LBB0_8
.LBB0_8:
	ldrb	w8, [sp]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #4]
	add	w8, w8, #8
	str	w8, [sp, #4]
	ldr	w8, [sp]
	asr	w8, w8, #8
	str	w8, [sp]
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp]
	and	w8, w8, #0xf
	cbnz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #4]
	add	w8, w8, #4
	str	w8, [sp, #4]
	ldr	w8, [sp]
	asr	w8, w8, #4
	str	w8, [sp]
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp]
	and	w8, w8, #0x3
	cbnz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	w8, [sp, #4]
	add	w8, w8, #2
	str	w8, [sp, #4]
	ldr	w8, [sp]
	asr	w8, w8, #2
	str	w8, [sp]
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp]
	tbnz	w8, #0, .LBB0_18
	b	.LBB0_15
.LBB0_15:
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	ldr	w8, [sp]
	asr	w8, w8, #1
	str	w8, [sp]
	ldr	w8, [sp]
	cbnz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	mov	w8, #32
	str	w8, [sp, #28]
	b	.LBB0_19
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	ldr	w8, [sp]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp, #4]
	str	w8, [sp, #28]
	b	.LBB0_19
.LBB0_19:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	lo0bits, .Lfunc_end0-lo0bits
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lo0bits