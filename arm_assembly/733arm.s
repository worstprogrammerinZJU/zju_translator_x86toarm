	.text
	.globl	swri_get_dither                 // -- Begin function swri_get_dither
	.p2align	2
	.type	swri_get_dither,@function
swri_get_dither:                        // @swri_get_dither
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	w3, [x29, #-32]
	stur	w4, [x29, #-36]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldur	w8, [x29, #-28]
	add	w0, w8, #2
	mov	w1, #8
	bl	av_malloc_array
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, ENOMEM
	ldr	w0, [x8, :lo12:ENOMEM]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_24
.LBB0_2:
	str	wzr, [sp, #36]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-28]
	add	w9, w9, #2
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-32]
	mov	w9, #26125
	movk	w9, #25, lsl #16
	mul	w8, w8, w9
	mov	w9, #62303
	movk	w9, #15470, lsl #16
	add	w8, w8, w9
	stur	w8, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #129
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	s1, [x29, #-32]
                                        // implicit-def: $d0
	fmov	s0, s1
	ucvtf	d0, d0
	adrp	x8, UINT_MAX
	ldr	d1, [x8, :lo12:UINT_MAX]
	fdiv	d0, d0, d1
	fmov	d1, #0.50000000
	fsub	d0, d0, d1
	str	d0, [sp, #24]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, SWR_DITHER_NB
	ldr	w9, [x9, :lo12:SWR_DITHER_NB]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	s1, [x29, #-32]
                                        // implicit-def: $d0
	fmov	s0, s1
	ucvtf	d0, d0
	adrp	x8, UINT_MAX
	ldr	d1, [x8, :lo12:UINT_MAX]
	fdiv	d0, d0, d1
	str	d0, [sp, #24]
	ldur	w9, [x29, #-32]
	mov	w10, #26125
	movk	w10, #25, lsl #16
	mul	w9, w9, w10
	mov	w10, #62303
	movk	w10, #15470, lsl #16
	add	w9, w9, w10
	stur	w9, [x29, #-32]
	ldur	s1, [x29, #-32]
                                        // implicit-def: $d0
	fmov	s0, s1
	ucvtf	d0, d0
	ldr	d1, [x8, :lo12:UINT_MAX]
	fdiv	d1, d0, d1
	ldr	d0, [sp, #24]
	fsub	d0, d0, d1
	str	d0, [sp, #24]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #36]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_3
.LBB0_9:
	str	wzr, [sp, #36]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #128
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, SWR_DITHER_NB
	ldr	w9, [x9, :lo12:SWR_DITHER_NB]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	av_assert0
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #36]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #16]
	b	.LBB0_14
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #36]
	ldr	d2, [x8, x9, lsl #3]
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #36]
	add	w9, w9, #1
	ldr	d1, [x8, w9, sxtw #3]
	fmov	d0, #2.00000000
	fnmsub	d0, d0, d1, d2
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #36]
	add	w9, w9, #2
	ldr	d1, [x8, w9, sxtw #3]
	fsub	d0, d0, d1
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	mov	w0, #6
	bl	sqrt
	fmov	d1, d0
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	fdiv	d0, d0, d1
	str	d0, [sp, #16]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	d1, [sp, #48]
	ldr	d0, [sp, #16]
	fmul	d0, d0, d1
	str	d0, [sp, #16]
	ldur	w8, [x29, #-36]
	subs	w8, w8, #130
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_20
// %bb.15:                              //   in Loop: Header=BB0_10 Depth=1
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_16:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-24]
	ldrsw	x10, [sp, #36]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_21
.LBB0_17:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-24]
	ldrsw	x10, [sp, #36]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_21
.LBB0_18:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	d0, [sp, #16]
	fcvt	s0, d0
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #36]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_21
.LBB0_19:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-24]
	ldrsw	x10, [sp, #36]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_21
.LBB0_20:                               //   in Loop: Header=BB0_10 Depth=1
	mov	w0, wzr
	bl	av_assert0
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_10
.LBB0_23:
	ldr	x0, [sp, #40]
	bl	av_free
	stur	wzr, [x29, #-4]
	b	.LBB0_24
.LBB0_24:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	swri_get_dither, .Lfunc_end0-swri_get_dither
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_18-.Ltmp0
	.word	.LBB0_19-.Ltmp0
                                        // -- End function
	.type	ENOMEM,@object                  // @ENOMEM
	.bss
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.word	0                               // 0x0
	.size	ENOMEM, 4
	.type	UINT_MAX,@object                // @UINT_MAX
	.globl	UINT_MAX
	.p2align	3
UINT_MAX:
	.xword	0x0000000000000000              // double 0
	.size	UINT_MAX, 8
	.type	SWR_DITHER_NB,@object           // @SWR_DITHER_NB
	.globl	SWR_DITHER_NB
	.p2align	2
SWR_DITHER_NB:
	.word	0                               // 0x0
	.size	SWR_DITHER_NB, 4
	.type	TMP_EXTRA,@object               // @TMP_EXTRA
	.globl	TMP_EXTRA
	.p2align	2
TMP_EXTRA:
	.word	0                               // 0x0
	.size	TMP_EXTRA, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_malloc_array
	.addrsig_sym AVERROR
	.addrsig_sym av_assert0
	.addrsig_sym sqrt
	.addrsig_sym av_free
	.addrsig_sym ENOMEM
	.addrsig_sym UINT_MAX
	.addrsig_sym SWR_DITHER_NB