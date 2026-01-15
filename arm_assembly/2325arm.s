	.text
	.globl	stbiw__write_hdr_scanline       // -- Begin function stbiw__write_hdr_scanline
	.p2align	2
	.type	stbiw__write_hdr_scanline,@function
stbiw__write_hdr_scanline:              // @stbiw__write_hdr_scanline
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	x3, [x29, #-24]
	stur	x4, [x29, #-32]
	adrp	x8, .L__const.stbiw__write_hdr_scanline.scanlineheader
	add	x8, x8, :lo12:.L__const.stbiw__write_hdr_scanline.scanlineheader
	ldr	w8, [x8]
	stur	w8, [x29, #-36]
	ldur	w8, [x29, #-12]
	and	w8, w8, #0xff00
	asr	w8, w8, #8
	sturb	w8, [x29, #-34]
	ldurb	w8, [x29, #-12]
	sturb	w8, [x29, #-33]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #8
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #8, lsl #12             // =32768
	b.lt	.LBB0_10
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #40]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #40]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-16]
	subs	w8, w8, #3
	subs	w8, w8, #1
	b.hi	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #2
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #52]
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #48]
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #0
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #44]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #0
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #52]
	str	w8, [sp, #48]
	str	w8, [sp, #44]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	sub	x0, x29, #40
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	add	x1, sp, #44
	bl	stbiw__linear_to_rgbe
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	mov	w2, #4
	blr	x8
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_3
.LBB0_9:
	b	.LBB0_50
.LBB0_10:
	str	wzr, [sp, #40]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #40]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-16]
	subs	w8, w8, #3
	subs	w8, w8, #1
	b.hi	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #2
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #52]
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #48]
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #0
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #44]
	b	.LBB0_15
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w9, [sp, #40]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	w9, w9, #0
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #52]
	str	w8, [sp, #48]
	str	w8, [sp, #44]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	sub	x0, x29, #40
	add	x1, sp, #44
	bl	stbiw__linear_to_rgbe
	ldurb	w8, [x29, #-40]
	ldur	x9, [x29, #-24]
	ldr	w10, [sp, #40]
	ldur	w11, [x29, #-12]
	mov	w12, wzr
	mul	w11, w11, w12
	add	w10, w10, w11
	add	x9, x9, w10, sxtw
	strb	w8, [x9]
	ldurb	w8, [x29, #-39]
	ldur	x9, [x29, #-24]
	ldr	w10, [sp, #40]
	ldur	w11, [x29, #-12]
	add	w10, w10, w11
	add	x9, x9, w10, sxtw
	strb	w8, [x9]
	ldurb	w8, [x29, #-38]
	ldur	x9, [x29, #-24]
	ldr	w10, [sp, #40]
	ldur	w11, [x29, #-12]
	add	w10, w10, w11, lsl #1
	add	x9, x9, w10, sxtw
	strb	w8, [x9]
	ldurb	w8, [x29, #-37]
	ldur	x9, [x29, #-24]
	ldr	w10, [sp, #40]
	ldur	w11, [x29, #-12]
	mov	w12, #3
	mul	w11, w11, w12
	add	w10, w10, w11
	add	x9, x9, w10, sxtw
	strb	w8, [x9]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_11
.LBB0_17:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	sub	x1, x29, #36
	mov	w2, #4
	blr	x8
	str	wzr, [sp, #36]
	b	.LBB0_18
.LBB0_18:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_20 Depth 2
                                        //       Child Loop BB0_22 Depth 3
                                        //       Child Loop BB0_30 Depth 3
                                        //       Child Loop BB0_36 Depth 3
                                        //       Child Loop BB0_41 Depth 3
	ldr	w8, [sp, #36]
	subs	w8, w8, #4
	b.ge	.LBB0_49
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	x8, [x29, #-24]
	ldur	w9, [x29, #-12]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	str	x8, [sp, #24]
	str	wzr, [sp, #40]
	b	.LBB0_20
.LBB0_20:                               //   Parent Loop BB0_18 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_22 Depth 3
                                        //       Child Loop BB0_30 Depth 3
                                        //       Child Loop BB0_36 Depth 3
                                        //       Child Loop BB0_41 Depth 3
	ldr	w8, [sp, #40]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_47
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=2
	ldr	w8, [sp, #40]
	str	w8, [sp, #32]
	b	.LBB0_22
.LBB0_22:                               //   Parent Loop BB0_18 Depth=1
                                        //     Parent Loop BB0_20 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #32]
	add	w8, w8, #2
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_27
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_22 Depth=3
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #32]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #32]
	add	w10, w10, #1
	ldrb	w9, [x9, w10, sxtw]
	subs	w8, w8, w9
	b.ne	.LBB0_26
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_22 Depth=3
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #32]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #32]
	add	w10, w10, #2
	ldrb	w9, [x9, w10, sxtw]
	subs	w8, w8, w9
	b.ne	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_20 Depth=2
	b	.LBB0_27
.LBB0_26:                               //   in Loop: Header=BB0_22 Depth=3
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_22
.LBB0_27:                               //   in Loop: Header=BB0_20 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #2
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.lt	.LBB0_29
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_20 Depth=2
	ldur	w8, [x29, #-12]
	str	w8, [sp, #32]
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_20 Depth=2
	b	.LBB0_30
.LBB0_30:                               //   Parent Loop BB0_18 Depth=1
                                        //     Parent Loop BB0_20 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_34
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_30 Depth=3
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #128
	b.le	.LBB0_33
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_30 Depth=3
	mov	w8, #128
	str	w8, [sp, #20]
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_30 Depth=3
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #20]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #40]
	add	x2, x8, x9
	bl	stbiw__write_dump_data
	ldr	w9, [sp, #20]
	ldr	w8, [sp, #40]
	add	w8, w8, w9
	str	w8, [sp, #40]
	b	.LBB0_30
.LBB0_34:                               //   in Loop: Header=BB0_20 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #2
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_46
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_20 Depth=2
	b	.LBB0_36
.LBB0_36:                               //   Parent Loop BB0_18 Depth=1
                                        //     Parent Loop BB0_20 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w9, [sp, #32]
	ldur	w10, [x29, #-12]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_38
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_36 Depth=3
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #32]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #40]
	ldrb	w9, [x9, x10]
	subs	w8, w8, w9
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_36 Depth=3
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_40
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_36 Depth=3
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_36
.LBB0_40:                               //   in Loop: Header=BB0_20 Depth=2
	b	.LBB0_41
.LBB0_41:                               //   Parent Loop BB0_18 Depth=1
                                        //     Parent Loop BB0_20 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_45
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_41 Depth=3
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #127
	b.le	.LBB0_44
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_41 Depth=3
	mov	w8, #127
	str	w8, [sp, #16]
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_41 Depth=3
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #16]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #40]
	ldrb	w2, [x8, x9]
	bl	stbiw__write_run_data
	ldr	w9, [sp, #16]
	ldr	w8, [sp, #40]
	add	w8, w8, w9
	str	w8, [sp, #40]
	b	.LBB0_41
.LBB0_45:                               //   in Loop: Header=BB0_20 Depth=2
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_20 Depth=2
	b	.LBB0_20
.LBB0_47:                               //   in Loop: Header=BB0_18 Depth=1
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_18 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_18
.LBB0_49:
	b	.LBB0_50
.LBB0_50:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	stbiw__write_hdr_scanline, .Lfunc_end0-stbiw__write_hdr_scanline
                                        // -- End function
	.type	.L__const.stbiw__write_hdr_scanline.scanlineheader,@object // @__const.stbiw__write_hdr_scanline.scanlineheader
	.section	.rodata.cst4,"aM",@progbits,4
.L__const.stbiw__write_hdr_scanline.scanlineheader:
	.asciz	"\002\002\000"
	.size	.L__const.stbiw__write_hdr_scanline.scanlineheader, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__linear_to_rgbe
	.addrsig_sym stbiw__write_dump_data
	.addrsig_sym stbiw__write_run_data