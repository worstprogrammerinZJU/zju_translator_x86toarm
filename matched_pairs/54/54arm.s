	.text
	.globl	swri_audio_convert              // -- Begin function swri_audio_convert
	.p2align	2
	.type	swri_audio_convert,@function
swri_audio_convert:                     // @swri_audio_convert
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	stur	wzr, [x29, #-44]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #68]                   // 4-byte Folded Reload
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	stur	w8, [x29, #-48]
	stur	wzr, [x29, #-52]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	av_assert0
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	cbz	w8, .LBB0_12
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	str	w8, [sp, #64]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_6:
	mov	w8, #1
	str	w8, [sp, #64]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #64]                   // 4-byte Folded Reload
	stur	w8, [x29, #-56]
	stur	wzr, [x29, #-60]
	stur	wzr, [x29, #-40]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-40]
	ldr	x9, [x8, x9, lsl #3]
	ldur	w8, [x29, #-60]
                                        // kill: def $x8 killed $w8
	orr	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-60]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_8
.LBB0_11:
	ldur	w8, [x29, #-60]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	and	w9, w8, w9
	ldur	w8, [x29, #-52]
	orr	w8, w8, w9
	stur	w8, [x29, #-52]
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	cbz	w8, .LBB0_21
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	b	.LBB0_16
.LBB0_15:
	mov	w8, #1
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #60]                   // 4-byte Folded Reload
	stur	w8, [x29, #-64]
	stur	wzr, [x29, #-68]
	stur	wzr, [x29, #-40]
	b	.LBB0_17
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-64]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-40]
	ldr	x9, [x8, x9, lsl #3]
	ldur	w8, [x29, #-68]
                                        // kill: def $x8 killed $w8
	orr	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-68]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_17
.LBB0_20:
	ldur	w8, [x29, #-68]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #8]
	and	w9, w8, w9
	ldur	w8, [x29, #-52]
	orr	w8, w8, w9
	stur	w8, [x29, #-52]
	b	.LBB0_21
.LBB0_21:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_44
	b	.LBB0_22
.LBB0_22:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB0_44
	b	.LBB0_23
.LBB0_23:
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_44
	b	.LBB0_24
.LBB0_24:
	ldur	w8, [x29, #-36]
	and	w8, w8, #0xfffffff0
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	av_assert1
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	cset	w8, le
	and	w0, w8, #0x1
	bl	av_assert1
	ldur	x8, [x29, #-16]
	ldr	w9, [x8]
	adrp	x8, SWR_CH_MAX
	ldr	w10, [x8, :lo12:SWR_CH_MAX]
	mov	w8, #1
	subs	w9, w9, w10
	str	w8, [sp, #56]                   // 4-byte Folded Spill
	b.eq	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldrsw	x9, [x9]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	str	w8, [sp, #56]                   // 4-byte Folded Spill
	b	.LBB0_26
.LBB0_26:
	ldr	w8, [sp, #56]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	av_assert2
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	b.le	.LBB0_41
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_39
	b	.LBB0_28
.LBB0_28:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	b	.LBB0_31
.LBB0_30:
	mov	w8, #1
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	b	.LBB0_31
.LBB0_31:
	ldr	w8, [sp, #52]                   // 4-byte Folded Reload
	stur	w8, [x29, #-72]
	stur	wzr, [x29, #-40]
	b	.LBB0_32
.LBB0_32:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-72]
	subs	w8, w8, w9
	b.ge	.LBB0_38
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_32 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-40]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-40]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-44]
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_32 Depth=1
	mov	w8, #1
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_36
.LBB0_35:                               //   in Loop: Header=BB0_32 Depth=1
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_32 Depth=1
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldr	w9, [sp, #48]                   // 4-byte Folded Reload
	ldr	w10, [sp, #20]                  // 4-byte Folded Reload
	mul	w2, w9, w10
	blr	x8
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_32 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_32
.LBB0_38:
	b	.LBB0_40
.LBB0_39:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldur	x9, [x29, #-24]
	ldr	x0, [x9, #16]
	ldur	x9, [x29, #-32]
	ldr	x1, [x9, #16]
	ldur	w2, [x29, #-44]
	blr	x8
	b	.LBB0_40
.LBB0_40:
	b	.LBB0_41
.LBB0_41:
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ne	.LBB0_43
	b	.LBB0_42
.LBB0_42:
	stur	wzr, [x29, #-4]
	b	.LBB0_63
.LBB0_43:
	b	.LBB0_44
.LBB0_44:
	stur	wzr, [x29, #-40]
	b	.LBB0_45
.LBB0_45:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-40]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_62
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_48
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-40]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_49
.LBB0_48:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	w8, [x29, #-40]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_45 Depth=1
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	stur	w8, [x29, #-76]
	ldur	w8, [x29, #-76]
	subs	w8, w8, #0
	b.ge	.LBB0_51
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_45 Depth=1
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_55
.LBB0_51:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	cbz	x8, .LBB0_53
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_45 Depth=1
	mov	w8, #1
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_54
.LBB0_53:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_45 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldur	x9, [x29, #-32]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_45 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	stur	w8, [x29, #-80]
	ldur	w8, [x29, #-76]
	subs	w8, w8, #0
	b.ge	.LBB0_57
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_58
.LBB0_57:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-76]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]                        // 8-byte Folded Spill
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_45 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x8, [sp, #88]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-40]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	ldur	w9, [x29, #-48]
	ldur	w10, [x29, #-36]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #72]
	ldr	x8, [sp, #80]
	cbnz	x8, .LBB0_60
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_45 Depth=1
	b	.LBB0_61
.LBB0_60:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #80]
	ldur	w10, [x29, #-44]
	ldur	w11, [x29, #-48]
	mul	w10, w10, w11
	add	x0, x9, w10, sxtw #2
	ldr	x9, [sp, #88]
	ldur	w10, [x29, #-44]
	ldur	w11, [x29, #-80]
	mul	w10, w10, w11
	add	x1, x9, w10, sxtw #2
	ldur	w2, [x29, #-80]
	ldur	w3, [x29, #-48]
	ldr	x4, [sp, #72]
	blr	x8
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_45 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_45
.LBB0_62:
	stur	wzr, [x29, #-4]
	b	.LBB0_63
.LBB0_63:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	swri_audio_convert, .Lfunc_end0-swri_audio_convert
                                        // -- End function
	.type	SWR_CH_MAX,@object              // @SWR_CH_MAX
	.bss
	.globl	SWR_CH_MAX
	.p2align	2
SWR_CH_MAX:
	.word	0                               // 0x0
	.size	SWR_CH_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_assert0
	.addrsig_sym av_assert1
	.addrsig_sym av_assert2
	.addrsig_sym SWR_CH_MAX