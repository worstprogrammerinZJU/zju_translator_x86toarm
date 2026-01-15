	.text
	.p2align	2                               // -- Begin function invert_initial_buffer
	.type	invert_initial_buffer,@function
invert_initial_buffer:                  // @invert_initial_buffer
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	str	x4, [sp, #32]
	str	x5, [sp, #24]
	ldur	w8, [x29, #-36]
	ldr	x9, [sp, #24]
	ldr	w9, [x9]
	add	w0, w8, w9
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	add	w1, w8, #1
	bl	FFMIN
	str	w0, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	tbnz	x8, #63, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_26
.LBB0_2:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	lsl	w8, w8, #1
	add	w1, w8, #1
	bl	swri_realloc_audio
	str	w0, [sp, #8]
	subs	w8, w0, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_4:
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	str	wzr, [sp, #16]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w9, [sp, #20]
	ldr	x10, [sp, #24]
	ldr	w10, [x10]
	subs	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #16]
	bl	memcpy
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_7
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_12:
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	add	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	adrp	x8, INT_MAX
	ldr	w8, [x8, :lo12:INT_MAX]
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_14:
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_15
.LBB0_15:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_17 Depth 2
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.gt	.LBB0_22
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=1
	str	wzr, [sp, #16]
	b	.LBB0_17
.LBB0_17:                               //   Parent Loop BB0_15 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=2
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	ldr	w10, [sp, #20]
	subs	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	ldur	x10, [x29, #-16]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #16]
	bl	memcpy
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_17 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_17
.LBB0_20:                               //   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_15 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_15
.LBB0_22:
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	b	.LBB0_23
.LBB0_23:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	b.ge	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_23 Depth=1
	ldr	x9, [sp, #32]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x10, [x8, #24]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #8]
	add	x8, x8, x10
	str	x8, [x9, #8]
	b	.LBB0_23
.LBB0_25:
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	add	w0, w8, w9
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	lsl	w8, w8, #1
	add	w1, w8, #1
	bl	FFMAX
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	subs	w8, w0, w8
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w0, [sp, #8]
	mov	w1, wzr
	bl	FFMAX
	stur	w0, [x29, #-4]
	b	.LBB0_26
.LBB0_26:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	invert_initial_buffer, .Lfunc_end0-invert_initial_buffer
                                        // -- End function
	.type	INT_MAX,@object                 // @INT_MAX
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym invert_initial_buffer
	.addrsig_sym FFMIN
	.addrsig_sym swri_realloc_audio
	.addrsig_sym memcpy
	.addrsig_sym FFMAX
	.addrsig_sym INT_MAX