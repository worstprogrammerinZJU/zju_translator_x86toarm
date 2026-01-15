	.text
	.p2align	2                               // -- Begin function hash
	.type	hash,@function
hash:                                   // @hash
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	mov	w8, #197
	strb	w8, [sp, #7]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrb	w9, [x8]
	ldrb	w8, [sp, #7]
	eor	w8, w8, w9
	strb	w8, [sp, #7]
	ldrb	w8, [sp, #7]
	mov	w9, #403
	movk	w9, #256, lsl #16
	mul	w8, w8, w9
	strb	w8, [sp, #7]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldrb	w0, [sp, #7]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	hash, .Lfunc_end0-hash
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hash