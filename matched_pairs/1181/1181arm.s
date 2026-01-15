	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function forward_iseg_layer
.LCPI0_0:
	.xword	0x3fb999999999999a              // double 0.10000000000000001
.LCPI0_1:
	.xword	0xbfb999999999999a              // double -0.10000000000000001
.LCPI0_2:
	.xword	0x3f847ae147ae147b              // double 0.01
	.text
	.globl	forward_iseg_layer
	.p2align	2
	.type	forward_iseg_layer,@function
forward_iseg_layer:                     // @forward_iseg_layer
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	what_time_is_it_now
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	stur	d0, [x29, #-8]
	ldr	w8, [x9]
	stur	w8, [x29, #-28]
	ldr	x0, [x9, #8]
	ldr	w1, [x1, #16]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #20]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [x9, #24]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #20]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	mov	w1, wzr
	bl	memset
	stur	wzr, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	stur	w8, [x29, #-32]
	ldr	x8, [x9, #8]
	ldursw	x10, [x29, #-32]
	add	x0, x8, x10, lsl #2
	ldr	w8, [x9, #32]
	ldr	w10, [x9, #36]
	mul	w8, w8, w10
	ldr	w9, [x9, #40]
	mul	w1, w8, w9
	adrp	x8, LOGISTIC
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_1
.LBB0_4:
	stur	wzr, [x29, #-16]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
                                        //       Child Loop BB0_9 Depth 3
                                        //     Child Loop BB0_15 Depth 2
                                        //       Child Loop BB0_17 Depth 3
                                        //     Child Loop BB0_23 Depth 2
                                        //       Child Loop BB0_27 Depth 3
                                        //     Child Loop BB0_35 Depth 2
                                        //       Child Loop BB0_39 Depth 3
                                        //         Child Loop BB0_42 Depth 4
                                        //     Child Loop BB0_51 Depth 2
                                        //       Child Loop BB0_57 Depth 3
                                        //     Child Loop BB0_64 Depth 2
                                        //       Child Loop BB0_68 Depth 3
                                        //         Child Loop BB0_71 Depth 4
                                        //           Child Loop BB0_75 Depth 5
                                        //     Child Loop BB0_89 Depth 2
                                        //       Child Loop BB0_91 Depth 3
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_98
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	stur	wzr, [x29, #-12]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_9 Depth 3
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	stur	wzr, [x29, #-24]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_7 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x10, #36]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=3
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x9, #36]
	mul	w10, w10, w11
	ldr	w11, [x9, #40]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldur	w10, [x29, #-24]
	add	w8, w8, w10
	stur	w8, [x29, #-36]
	ldr	x8, [x9, #8]
	ldursw	x10, [x29, #-36]
	ldr	w10, [x8, x10, lsl #2]
	mov	w8, wzr
	subs	w8, w8, w10
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-36]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_9
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_7
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=1
	stur	wzr, [x29, #-12]
	b	.LBB0_15
.LBB0_15:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_17 Depth 3
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=2
	stur	wzr, [x29, #-24]
	b	.LBB0_17
.LBB0_17:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_15 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x10, #36]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=3
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x9, #32]
	add	w10, w10, w11
	ldr	w11, [x9, #36]
	mul	w10, w10, w11
	ldr	w11, [x9, #40]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldur	w10, [x29, #-24]
	add	w8, w8, w10
	stur	w8, [x29, #-40]
	ldr	x8, [x9, #8]
	ldursw	x10, [x29, #-40]
	ldr	w10, [x8, x10, lsl #2]
	mov	w8, wzr
	subs	w8, w8, w10
	scvtf	d1, w8
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-40]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_17 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_17
.LBB0_20:                               //   in Loop: Header=BB0_15 Depth=2
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_15 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_15
.LBB0_22:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [x8, #48]
	mov	w1, wzr
	mov	w2, #360
	bl	memset
	stur	wzr, [x29, #-12]
	b	.LBB0_23
.LBB0_23:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_27 Depth 3
	ldur	w8, [x29, #-12]
	subs	w8, w8, #90
	b.ge	.LBB0_34
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_23 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-28]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-12]
	ldr	x2, [x8, x9, lsl #3]
	mov	w1, wzr
	mov	w3, #1
	bl	fill_cpu
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	w9, [x29, #-16]
	ldr	w10, [x12, #64]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x12, #36]
	ldr	w12, [x12, #40]
	mul	w11, w11, w12
	add	w11, w11, #1
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	b.ge	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_34
.LBB0_26:                               //   in Loop: Header=BB0_23 Depth=2
	stur	wzr, [x29, #-24]
	b	.LBB0_27
.LBB0_27:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_23 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x10, #36]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_32
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_27 Depth=3
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-16]
	ldr	w10, [x12, #16]
	mul	w9, w9, w10
	ldur	w10, [x29, #-44]
	ldr	w11, [x12, #36]
	mul	w10, w10, w11
	ldr	w11, [x12, #40]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	stur	w9, [x29, #-48]
	ldr	x8, [x8]
	ldur	w9, [x29, #-16]
	ldr	w10, [x12, #64]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x12, #36]
	ldr	w12, [x12, #40]
	mul	w11, w11, w12
	add	w11, w11, #1
	mul	w10, w10, w11
	add	w9, w9, w10
	add	w9, w9, #1
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	scvtf	s0, s0
	stur	s0, [x29, #-52]
	ldur	s0, [x29, #-52]
	fcmp	s0, #0.0
	b.eq	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_27 Depth=3
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	s0, [x29, #-52]
	ldr	x9, [x8, #8]
	ldursw	x10, [x29, #-48]
	ldr	s1, [x9, x10, lsl #2]
	scvtf	s1, s1
	fsub	s0, s0, s1
	fcvtzs	w9, s0
	ldr	x10, [x8, #24]
	ldursw	x11, [x29, #-48]
	str	w9, [x10, x11, lsl #2]
	ldur	w0, [x29, #-28]
	ldr	x9, [x8, #8]
	ldur	w10, [x29, #-16]
	ldr	w11, [x8, #16]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	ldr	w10, [x8, #32]
	ldr	w11, [x8, #36]
	mul	w10, w10, w11
	ldr	w11, [x8, #40]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	ldursw	x10, [x29, #-24]
	add	x2, x9, x10, lsl #2
	ldr	w9, [x8, #36]
	ldr	w10, [x8, #40]
	mul	w3, w9, w10
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-12]
	ldr	x4, [x8, x9, lsl #3]
	mov	w5, #1
	mov	w1, w5
	bl	axpy_cpu
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-12]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_27 Depth=3
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_27 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_27
.LBB0_32:                               //   in Loop: Header=BB0_23 Depth=2
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_23 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_23
.LBB0_34:                               //   in Loop: Header=BB0_5 Depth=1
	mov	w0, #90
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #64]
	stur	wzr, [x29, #-12]
	b	.LBB0_35
.LBB0_35:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_39 Depth 3
                                        //         Child Loop BB0_42 Depth 4
	ldur	w8, [x29, #-12]
	subs	w8, w8, #90
	b.ge	.LBB0_50
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_35 Depth=2
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	w9, [x29, #-16]
	ldr	w10, [x12, #64]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x12, #36]
	ldr	w12, [x12, #40]
	mul	w11, w11, w12
	add	w11, w11, #1
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #60]
	ldr	w8, [sp, #60]
	subs	w8, w8, #0
	b.ge	.LBB0_38
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_50
.LBB0_38:                               //   in Loop: Header=BB0_35 Depth=2
	stur	wzr, [x29, #-24]
	b	.LBB0_39
.LBB0_39:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_35 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_42 Depth 4
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x10, #36]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_48
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	w9, [x29, #-16]
	ldr	w10, [x12, #64]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x12, #36]
	ldr	w12, [x12, #40]
	mul	w11, w11, w12
	add	w11, w11, #1
	mul	w10, w10, w11
	add	w9, w9, w10
	add	w9, w9, #1
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	scvtf	s0, s0
	str	s0, [sp, #56]
	ldr	s0, [sp, #56]
	fcmp	s0, #0.0
	b.eq	.LBB0_46
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_39 Depth=3
	movi	d0, #0000000000000000
	str	s0, [sp, #48]
	str	wzr, [sp, #52]
	b	.LBB0_42
.LBB0_42:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_35 Depth=2
                                        //       Parent Loop BB0_39 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_45
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_42 Depth=4
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldr	w10, [x9, #32]
	ldr	w11, [sp, #52]
	add	w10, w10, w11
	ldr	w11, [x9, #36]
	mul	w10, w10, w11
	ldr	w11, [x9, #40]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldur	w10, [x29, #-24]
	add	w8, w8, w10
	str	w8, [sp, #44]
	ldr	x8, [x9, #56]
	ldursw	x10, [x29, #-12]
	ldr	x8, [x8, x10, lsl #3]
	ldrsw	x10, [sp, #52]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x10, [x9, #48]
	ldursw	x11, [x29, #-12]
	ldr	w10, [x10, x11, lsl #2]
	sdiv	w8, w8, w10
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #44]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	scvtf	d0, w8
	mov	w0, #2
	bl	pow
	scvtf	s1, x0
	ldr	s0, [sp, #48]
	fadd	s0, s0, s1
	str	s0, [sp, #48]
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_42 Depth=4
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_42
.LBB0_45:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	s1, [sp, #48]
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-12]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_39 Depth=3
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_39 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_39
.LBB0_48:                               //   in Loop: Header=BB0_35 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-12]
	ldr	s0, [x8, x9, lsl #2]
	scvtf	s1, s0
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-12]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fdiv	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_35 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_35
.LBB0_50:                               //   in Loop: Header=BB0_5 Depth=1
	stur	wzr, [x29, #-12]
	b	.LBB0_51
.LBB0_51:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_57 Depth 3
	ldur	w8, [x29, #-12]
	subs	w8, w8, #90
	b.ge	.LBB0_63
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_51 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-12]
	ldr	w8, [x8, x9, lsl #2]
	cbnz	w8, .LBB0_54
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_51 Depth=2
	b	.LBB0_62
.LBB0_54:                               //   in Loop: Header=BB0_51 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-28]
	ldr	x9, [x8, #48]
	ldursw	x10, [x29, #-12]
	ldr	s0, [x9, x10, lsl #2]
	scvtf	s1, s0
	fmov	s0, #1.00000000
	fdiv	s0, s0, s1
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-12]
	ldr	x1, [x8, x9, lsl #3]
	mov	w2, #1
	bl	scal_cpu
	ldur	w8, [x29, #-16]
	cbnz	w8, .LBB0_61
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_51 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_61
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_51 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-12]
	ldr	w1, [x8, x9, lsl #2]
	ldr	x8, [sp, #64]
	ldursw	x9, [x29, #-12]
	ldr	s0, [x8, x9, lsl #2]
	fcvt	d0, s0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	stur	wzr, [x29, #-20]
	b	.LBB0_57
.LBB0_57:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_51 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_60
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_57 Depth=3
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-12]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-20]
	ldr	w1, [x8, x9, lsl #2]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_57 Depth=3
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_57
.LBB0_60:                               //   in Loop: Header=BB0_51 Depth=2
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_51 Depth=2
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_51 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_51
.LBB0_63:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #64]
	bl	free
	stur	wzr, [x29, #-12]
	b	.LBB0_64
.LBB0_64:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_68 Depth 3
                                        //         Child Loop BB0_71 Depth 4
                                        //           Child Loop BB0_75 Depth 5
	ldur	w8, [x29, #-12]
	subs	w8, w8, #90
	b.ge	.LBB0_88
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_64 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-12]
	ldr	w8, [x8, x9, lsl #2]
	cbnz	w8, .LBB0_67
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_64 Depth=2
	b	.LBB0_87
.LBB0_67:                               //   in Loop: Header=BB0_64 Depth=2
	stur	wzr, [x29, #-24]
	b	.LBB0_68
.LBB0_68:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_64 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_71 Depth 4
                                        //           Child Loop BB0_75 Depth 5
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x10, #36]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_86
	b	.LBB0_69
.LBB0_69:                               //   in Loop: Header=BB0_68 Depth=3
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	w9, [x29, #-16]
	ldr	w10, [x12, #64]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x12, #36]
	ldr	w12, [x12, #40]
	mul	w11, w11, w12
	add	w11, w11, #1
	mul	w10, w10, w11
	add	w9, w9, w10
	add	w9, w9, #1
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	scvtf	s0, s0
	str	s0, [sp, #40]
	ldr	s0, [sp, #40]
	fcmp	s0, #0.0
	b.eq	.LBB0_84
	b	.LBB0_70
.LBB0_70:                               //   in Loop: Header=BB0_68 Depth=3
	stur	wzr, [x29, #-20]
	b	.LBB0_71
.LBB0_71:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_64 Depth=2
                                        //       Parent Loop BB0_68 Depth=3
                                        // =>      This Loop Header: Depth=4
                                        //           Child Loop BB0_75 Depth 5
	ldur	w8, [x29, #-20]
	subs	w8, w8, #90
	b.ge	.LBB0_83
	b	.LBB0_72
.LBB0_72:                               //   in Loop: Header=BB0_71 Depth=4
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-20]
	ldr	w8, [x8, x9, lsl #2]
	cbnz	w8, .LBB0_74
	b	.LBB0_73
.LBB0_73:                               //   in Loop: Header=BB0_71 Depth=4
	b	.LBB0_82
.LBB0_74:                               //   in Loop: Header=BB0_71 Depth=4
	str	wzr, [sp, #36]
	b	.LBB0_75
.LBB0_75:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_64 Depth=2
                                        //       Parent Loop BB0_68 Depth=3
                                        //         Parent Loop BB0_71 Depth=4
                                        // =>        This Inner Loop Header: Depth=5
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_81
	b	.LBB0_76
.LBB0_76:                               //   in Loop: Header=BB0_75 Depth=5
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldr	w10, [x9, #32]
	ldr	w11, [sp, #36]
	add	w10, w10, w11
	ldr	w11, [x9, #36]
	mul	w10, w10, w11
	ldr	w11, [x9, #40]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldur	w10, [x29, #-24]
	add	w8, w8, w10
	str	w8, [sp, #32]
	ldr	x8, [x9, #56]
	ldursw	x10, [x29, #-20]
	ldr	x8, [x8, x10, lsl #3]
	ldrsw	x10, [sp, #36]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #32]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	scvtf	s0, w8
	str	s0, [sp, #28]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ne	.LBB0_78
	b	.LBB0_77
.LBB0_77:                               //   in Loop: Header=BB0_75 Depth=5
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	s2, [sp, #28]
	adrp	x9, .LCPI0_0
	ldr	d1, [x9, :lo12:.LCPI0_0]
	adrp	x9, .LCPI0_1
	ldr	d0, [x9, :lo12:.LCPI0_1]
	fcmp	s2, #0.0
	fcsel	d1, d0, d1, mi
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #32]
	add	x9, x8, x9, lsl #2
	ldr	s2, [x9]
                                        // implicit-def: $d0
	fmov	s0, s2
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fadd	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [x9]
	b	.LBB0_79
.LBB0_78:                               //   in Loop: Header=BB0_75 Depth=5
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	s2, [sp, #28]
	adrp	x9, .LCPI0_0
	ldr	d1, [x9, :lo12:.LCPI0_0]
	adrp	x9, .LCPI0_1
	ldr	d0, [x9, :lo12:.LCPI0_1]
	fcmp	s2, #0.0
	fcsel	d0, d0, d1, mi
	fneg	d1, d0
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #32]
	add	x9, x8, x9, lsl #2
	ldr	s2, [x9]
                                        // implicit-def: $d0
	fmov	s0, s2
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fadd	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [x9]
	b	.LBB0_79
.LBB0_79:                               //   in Loop: Header=BB0_75 Depth=5
	b	.LBB0_80
.LBB0_80:                               //   in Loop: Header=BB0_75 Depth=5
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_75
.LBB0_81:                               //   in Loop: Header=BB0_71 Depth=4
	b	.LBB0_82
.LBB0_82:                               //   in Loop: Header=BB0_71 Depth=4
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_71
.LBB0_83:                               //   in Loop: Header=BB0_68 Depth=3
	b	.LBB0_84
.LBB0_84:                               //   in Loop: Header=BB0_68 Depth=3
	b	.LBB0_85
.LBB0_85:                               //   in Loop: Header=BB0_68 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_68
.LBB0_86:                               //   in Loop: Header=BB0_64 Depth=2
	b	.LBB0_87
.LBB0_87:                               //   in Loop: Header=BB0_64 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_64
.LBB0_88:                               //   in Loop: Header=BB0_5 Depth=1
	stur	wzr, [x29, #-12]
	b	.LBB0_89
.LBB0_89:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_91 Depth 3
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_96
	b	.LBB0_90
.LBB0_90:                               //   in Loop: Header=BB0_89 Depth=2
	stur	wzr, [x29, #-24]
	b	.LBB0_91
.LBB0_91:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_89 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x10, #36]
	ldr	w10, [x10, #40]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_94
	b	.LBB0_92
.LBB0_92:                               //   in Loop: Header=BB0_91 Depth=3
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w9, [x29, #-16]
	ldr	w10, [x8, #16]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	ldr	w11, [x8, #32]
	add	w10, w10, w11
	ldr	w11, [x8, #36]
	mul	w10, w10, w11
	ldr	w11, [x8, #40]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldur	w10, [x29, #-24]
	add	w9, w9, w10
	str	w9, [sp, #24]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #24]
	add	x9, x8, x9, lsl #2
	ldr	s1, [x9]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	adrp	x8, .LCPI0_2
	ldr	d1, [x8, :lo12:.LCPI0_2]
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [x9]
	b	.LBB0_93
.LBB0_93:                               //   in Loop: Header=BB0_91 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_91
.LBB0_94:                               //   in Loop: Header=BB0_89 Depth=2
	b	.LBB0_95
.LBB0_95:                               //   in Loop: Header=BB0_89 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_89
.LBB0_96:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_97
.LBB0_97:                               //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_5
.LBB0_98:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [x9, #24]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #20]
	mul	w1, w8, w9
	bl	mag_array
	mov	w0, #2
	bl	pow
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #72]
	str	x0, [x8]
	bl	what_time_is_it_now
	ldur	d1, [x29, #-8]
	fsub	d0, d0, d1
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	forward_iseg_layer, .Lfunc_end0-forward_iseg_layer
                                        // -- End function
	.type	LOGISTIC,@object                // @LOGISTIC
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.word	0                               // 0x0
	.size	LOGISTIC, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%4d, %6.3f, "
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%6.3f,"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"took %lf sec\n"
	.size	.L.str.3, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym what_time_is_it_now
	.addrsig_sym memcpy
	.addrsig_sym memset
	.addrsig_sym activate_array
	.addrsig_sym fill_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym calloc
	.addrsig_sym pow
	.addrsig_sym scal_cpu
	.addrsig_sym printf
	.addrsig_sym free
	.addrsig_sym mag_array
	.addrsig_sym LOGISTIC