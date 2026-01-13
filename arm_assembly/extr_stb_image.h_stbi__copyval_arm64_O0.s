	.text
	.p2align	2                               // -- Begin function stbi__copyval
	.type	stbi__copyval,@function
stbi__copyval:                          // @stbi__copyval
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	mov	w8, #128
	str	w8, [sp, #4]
	str	wzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	subs	w8, w8, #4
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #4]
	and	w8, w8, w9
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	ldr	w8, [sp, #4]
	asr	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_6:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__copyval, .Lfunc_end0-stbi__copyval
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__copyval