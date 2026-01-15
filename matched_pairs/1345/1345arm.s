	.text
	.p2align	2                               // -- Begin function hi0bits
	.type	hi0bits,@function
hi0bits:                                // @hi0bits
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	wzr, [sp, #8]
	ldr	w8, [sp, #12]
	and	w8, w8, #0xffff0000
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #16
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #16
	str	w8, [sp, #12]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]
	and	w8, w8, #0xff000000
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	add	w8, w8, #8
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #8
	str	w8, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]
	and	w8, w8, #0xf0000000
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #8]
	add	w8, w8, #4
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #4
	str	w8, [sp, #12]
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #12]
	and	w8, w8, #0xc0000000
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #8]
	add	w8, w8, #2
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #2
	str	w8, [sp, #12]
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_12
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	tbnz	w8, #30, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	mov	w8, #32
	str	w8, [sp, #28]
	b	.LBB0_13
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #8]
	str	w8, [sp, #28]
	b	.LBB0_13
.LBB0_13:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	hi0bits, .Lfunc_end0-hi0bits
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hi0bits