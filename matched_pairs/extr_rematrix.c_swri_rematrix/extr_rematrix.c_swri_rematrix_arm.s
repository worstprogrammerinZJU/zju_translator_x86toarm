	.text
	.globl	swri_rematrix                   // -- Begin function swri_rematrix
	.p2align	2
	.type	swri_rematrix,@function
swri_rematrix:                          // @swri_rematrix
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	stur	w4, [x29, #-40]
	stur	wzr, [x29, #-60]
	stur	wzr, [x29, #-64]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #88]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #88]
	ldur	x9, [x29, #-24]
	ldr	x0, [x9, #16]
	ldur	x9, [x29, #-32]
	ldr	x1, [x9, #16]
	ldur	x9, [x29, #-16]
	ldr	w2, [x9, #36]
	ldur	w3, [x29, #-36]
	blr	x8
	stur	wzr, [x29, #-4]
	b	.LBB0_70
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #72]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-36]
	and	w8, w8, #0xfffffff0
	stur	w8, [x29, #-60]
	ldur	w8, [x29, #-60]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9]
	mul	w8, w8, w9
	stur	w8, [x29, #-64]
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #84]
	mov	w9, #1
	str	w9, [sp, #48]                   // 4-byte Folded Spill
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #84]
	bl	av_get_channel_layout_nb_channels
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, eq
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #48]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #80]
	mov	w9, #1
	str	w9, [sp, #36]                   // 4-byte Folded Spill
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #80]
	bl	av_get_channel_layout_nb_channels
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, eq
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	av_assert0
	stur	wzr, [x29, #-44]
	b	.LBB0_10
.LBB0_10:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_57 Depth 2
                                        //       Child Loop BB0_59 Depth 3
                                        //     Child Loop BB0_48 Depth 2
                                        //       Child Loop BB0_50 Depth 3
                                        //     Child Loop BB0_38 Depth 2
                                        //       Child Loop BB0_40 Depth 3
	ldursw	x8, [x29, #-44]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ge	.LBB0_69
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w8, [x8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	cbz	w8, .LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #1
	b.eq	.LBB0_17
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #2
	b.eq	.LBB0_29
	b	.LBB0_36
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-40]
	cbz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w8, [x29, #-36]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #32]
	bl	av_get_bytes_per_sample
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	mov	w9, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mul	w2, w8, w9
	mov	w1, wzr
	bl	memset
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_67
.LBB0_17:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w8, [x8, #4]
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-48]
	ldr	d0, [x8, x9, lsl #3]
	fmov	d1, #1.00000000
	fcmp	d0, d1
	b.eq	.LBB0_24
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #72]
	cbz	x8, .LBB0_21
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-60]
	cbz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #72]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x0, [x9, x10, lsl #3]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-48]
	ldr	x1, [x9, x10, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w2, [x9, #48]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldursw	x10, [x29, #-48]
	add	x9, x9, x10
	mov	w3, w9
	ldur	w4, [x29, #-60]
	blr	x8
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-60]
	subs	w8, w8, w9
	b.eq	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-64]
	add	x9, x9, x10
	mov	w0, w9
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-48]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-64]
	add	x9, x9, x10
	mov	w1, w9
	ldur	x9, [x29, #-16]
	ldr	w2, [x9, #36]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldursw	x10, [x29, #-48]
	add	x9, x9, x10
	mov	w3, w9
	ldur	w9, [x29, #-36]
	ldur	w10, [x29, #-60]
	subs	w4, w9, w10
	blr	x8
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_28
.LBB0_24:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-40]
	cbz	w8, .LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-44]
	ldr	x0, [x8, x9, lsl #3]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-48]
	ldr	x1, [x8, x9, lsl #3]
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9]
	mul	w2, w8, w9
	bl	memcpy
	b	.LBB0_27
.LBB0_26:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-48]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_67
.LBB0_29:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w8, [x8, #4]
	stur	w8, [x29, #-68]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w8, [x8, #8]
	str	w8, [sp, #72]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	cbz	x8, .LBB0_32
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-60]
	cbz	w8, .LBB0_32
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x0, [x9, x10, lsl #3]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-68]
	ldr	x1, [x9, x10, lsl #3]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #72]
	ldr	x2, [x9, x10, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w3, [x9, #48]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldursw	x10, [x29, #-68]
	add	x9, x9, x10
	mov	w4, w9
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldrsw	x10, [sp, #72]
	add	x9, x9, x10
	mov	w5, w9
	ldur	w6, [x29, #-60]
	blr	x8
	b	.LBB0_33
.LBB0_32:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x0, [x9, x10, lsl #3]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-68]
	ldr	x1, [x9, x10, lsl #3]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #72]
	ldr	x2, [x9, x10, lsl #3]
	ldur	x9, [x29, #-16]
	ldr	w3, [x9, #36]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldursw	x10, [x29, #-68]
	add	x9, x9, x10
	mov	w4, w9
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldrsw	x10, [sp, #72]
	add	x9, x9, x10
	mov	w5, w9
	ldur	w6, [x29, #-60]
	blr	x8
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-60]
	subs	w8, w8, w9
	b.eq	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-64]
	add	x0, x9, x10
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-68]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-64]
	add	x1, x9, x10
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #72]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-64]
	add	x2, x9, x10
	ldur	x9, [x29, #-16]
	ldr	w3, [x9, #36]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldursw	x10, [x29, #-68]
	add	x9, x9, x10
	mov	w4, w9
	ldur	x9, [x29, #-32]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-44]
	mul	x9, x9, x10
	ldrsw	x10, [sp, #72]
	add	x9, x9, x10
	mov	w5, w9
	ldur	w9, [x29, #-36]
	ldur	w10, [x29, #-60]
	subs	w6, w9, w10
	blr	x8
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_67
.LBB0_36:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	adrp	x9, AV_SAMPLE_FMT_FLTP
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_FLTP]
	subs	w8, w8, w9
	b.ne	.LBB0_46
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_10 Depth=1
	stur	wzr, [x29, #-52]
	b	.LBB0_38
.LBB0_38:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_40 Depth 3
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_45
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_38 Depth=2
	movi	d0, #0000000000000000
	str	s0, [sp, #68]
	stur	wzr, [x29, #-56]
	b	.LBB0_40
.LBB0_40:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_38 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-56]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_43
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_40 Depth=3
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldur	w9, [x29, #-56]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-48]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-52]
	ldr	s0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-48]
	ldr	s1, [x8, x9, lsl #2]
	ldr	s2, [sp, #68]
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #68]
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_40 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_40
.LBB0_43:                               //   in Loop: Header=BB0_38 Depth=2
	ldr	w8, [sp, #68]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-52]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_38 Depth=2
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_38
.LBB0_45:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_66
.LBB0_46:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #32]
	adrp	x9, AV_SAMPLE_FMT_DBLP
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_DBLP]
	subs	w8, w8, w9
	b.ne	.LBB0_56
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_10 Depth=1
	stur	wzr, [x29, #-52]
	b	.LBB0_48
.LBB0_48:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_50 Depth 3
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_55
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_48 Depth=2
	movi	d0, #0000000000000000
	str	d0, [sp, #56]
	stur	wzr, [x29, #-56]
	b	.LBB0_50
.LBB0_50:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_48 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-56]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_53
	b	.LBB0_51
.LBB0_51:                               //   in Loop: Header=BB0_50 Depth=3
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldur	w9, [x29, #-56]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-48]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-52]
	ldr	d0, [x8, x9, lsl #3]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-48]
	ldr	d1, [x8, x9, lsl #3]
	ldr	d2, [sp, #56]
	fmadd	d0, d0, d1, d2
	str	d0, [sp, #56]
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_50 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_50
.LBB0_53:                               //   in Loop: Header=BB0_48 Depth=2
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-52]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_48 Depth=2
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_48
.LBB0_55:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_65
.LBB0_56:                               //   in Loop: Header=BB0_10 Depth=1
	stur	wzr, [x29, #-52]
	b	.LBB0_57
.LBB0_57:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_59 Depth 3
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_64
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_57 Depth=2
	str	wzr, [sp, #52]
	stur	wzr, [x29, #-56]
	b	.LBB0_59
.LBB0_59:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_57 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-56]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_62
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_59 Depth=3
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	ldr	x8, [x8, x9, lsl #3]
	ldur	w9, [x29, #-56]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-48]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-52]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-48]
	ldr	w9, [x9, x10, lsl #2]
	mul	w9, w8, w9
	ldr	w8, [sp, #52]
	add	w8, w8, w9
	str	w8, [sp, #52]
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_59 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_59
.LBB0_62:                               //   in Loop: Header=BB0_57 Depth=2
	ldr	w8, [sp, #52]
	add	w8, w8, #4, lsl #12             // =16384
	asr	w8, w8, #15
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-44]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-52]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_63
.LBB0_63:                               //   in Loop: Header=BB0_57 Depth=2
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_57
.LBB0_64:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_67
.LBB0_67:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_10
.LBB0_69:
	stur	wzr, [x29, #-4]
	b	.LBB0_70
.LBB0_70:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	swri_rematrix, .Lfunc_end0-swri_rematrix
                                        // -- End function
	.type	AV_SAMPLE_FMT_FLTP,@object      // @AV_SAMPLE_FMT_FLTP
	.bss
	.globl	AV_SAMPLE_FMT_FLTP
	.p2align	2
AV_SAMPLE_FMT_FLTP:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_FLTP, 4
	.type	AV_SAMPLE_FMT_DBLP,@object      // @AV_SAMPLE_FMT_DBLP
	.globl	AV_SAMPLE_FMT_DBLP
	.p2align	2
AV_SAMPLE_FMT_DBLP:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_DBLP, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_assert0
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym memset
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym memcpy
	.addrsig_sym AV_SAMPLE_FMT_FLTP
	.addrsig_sym AV_SAMPLE_FMT_DBLP