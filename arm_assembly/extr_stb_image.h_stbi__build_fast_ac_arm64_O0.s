	.text
	.p2align	2                               // -- Begin function stbi__build_fast_ac
	.type	stbi__build_fast_ac,@function
stbi__build_fast_ac:                    // @stbi__build_fast_ac
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	adrp	x9, FAST_BITS
	ldr	w10, [x9, :lo12:FAST_BITS]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #24]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #28]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	ldr	w8, [sp, #24]
	subs	w8, w8, #255
	b.ge	.LBB0_12
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	asr	w8, w8, #4
	and	w8, w8, #0xf
	str	w8, [sp, #16]
	ldr	w8, [sp, #20]
	and	w8, w8, #0xf
	str	w8, [sp, #12]
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_11
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	adrp	x9, FAST_BITS
	ldr	w9, [x9, :lo12:FAST_BITS]
	subs	w8, w8, w9
	b.gt	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #8]
	lsl	w9, w8, w9
	adrp	x10, FAST_BITS
	ldr	w11, [x10, :lo12:FAST_BITS]
	mov	w8, #1
	lsl	w11, w8, w11
	subs	w11, w11, #1
	and	w9, w9, w11
	ldr	w10, [x10, :lo12:FAST_BITS]
	ldr	w11, [sp, #12]
	subs	w10, w10, w11
	asr	w9, w9, w10
	str	w9, [sp, #4]
	ldr	w9, [sp, #12]
	subs	w9, w9, #1
	lsl	w8, w8, w9
	str	w8, [sp]
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #12]
	mov	w8, #-1
	lsl	w8, w8, w9
	add	w9, w8, #1
	ldr	w8, [sp, #4]
	add	w8, w8, w9
	str	w8, [sp, #4]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	adds	w8, w8, #128
	b.lt	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #127
	b.gt	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #16]
	lsl	w8, w8, #4
	add	w8, w8, w9, lsl #8
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	add	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #28]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_14:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__build_fast_ac, .Lfunc_end0-stbi__build_fast_ac
                                        // -- End function
	.type	FAST_BITS,@object               // @FAST_BITS
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.word	0                               // 0x0
	.size	FAST_BITS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__build_fast_ac
	.addrsig_sym FAST_BITS