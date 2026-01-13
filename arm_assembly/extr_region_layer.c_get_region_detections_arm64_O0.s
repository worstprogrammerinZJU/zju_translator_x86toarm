	.text
	.globl	get_region_detections           // -- Begin function get_region_detections
	.p2align	2
	.type	get_region_detections,@function
get_region_detections:                  // @get_region_detections
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #656
	sub	x9, x29, #80
	str	x9, [sp, #136]                  // 8-byte Folded Spill
	str	x0, [sp, #144]                  // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	stur	w3, [x29, #-12]
	stur	w4, [x29, #-16]
	stur	s0, [x29, #-20]
	str	x5, [x9, #48]
	stur	s1, [x29, #-36]
	stur	w6, [x29, #-40]
	str	x7, [x9, #32]
	ldr	x8, [x0]
	str	x8, [x9, #8]
	ldr	w8, [x0, #8]
	subs	w8, w8, #2
	b.ne	.LBB0_24
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	ldr	x10, [sp, #144]                 // 8-byte Folded Reload
	ldr	x8, [x10]
	ldrsw	x10, [x10, #12]
	add	x8, x8, x10, lsl #2
	str	x8, [x9]
	stur	wzr, [x29, #-56]
	b	.LBB0_2
.LBB0_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
                                        //       Child Loop BB0_6 Depth 3
                                        //         Child Loop BB0_8 Depth 4
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-56]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	stur	wzr, [x29, #-52]
	b	.LBB0_4
.LBB0_4:                                //   Parent Loop BB0_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_6 Depth 3
                                        //         Child Loop BB0_8 Depth 4
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-52]
	ldr	w9, [x9, #20]
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=2
	stur	wzr, [x29, #-60]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_2 Depth=1
                                        //     Parent Loop BB0_4 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_8 Depth 4
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=3
	stur	wzr, [x29, #-64]
	b	.LBB0_8
.LBB0_8:                                //   Parent Loop BB0_2 Depth=1
                                        //     Parent Loop BB0_4 Depth=2
                                        //       Parent Loop BB0_6 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	x10, [sp, #144]                 // 8-byte Folded Reload
	ldur	w8, [x29, #-64]
	ldr	w9, [x10, #28]
	ldr	w10, [x10, #32]
	add	w9, w9, w10
	add	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=4
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	ldr	x10, [sp, #144]                 // 8-byte Folded Reload
	ldur	w8, [x29, #-64]
	ldr	w11, [x10, #20]
	mul	w8, w8, w11
	ldr	w11, [x10, #16]
	mul	w8, w8, w11
	ldr	w11, [x10, #24]
	mul	w8, w8, w11
	ldur	w11, [x29, #-60]
	ldr	w12, [x10, #20]
	mul	w11, w11, w12
	ldr	w12, [x10, #16]
	mul	w11, w11, w12
	add	w8, w8, w11
	ldur	w11, [x29, #-56]
	ldr	w12, [x10, #20]
	mul	w11, w11, w12
	add	w8, w8, w11
	ldur	w11, [x29, #-52]
	add	w8, w8, w11
	stur	w8, [x29, #-84]
	ldur	w8, [x29, #-64]
	ldr	w11, [x10, #20]
	mul	w8, w8, w11
	ldr	w11, [x10, #16]
	mul	w8, w8, w11
	ldr	w11, [x10, #24]
	mul	w8, w8, w11
	ldur	w11, [x29, #-60]
	ldr	w12, [x10, #20]
	mul	w11, w11, w12
	ldr	w12, [x10, #16]
	mul	w11, w11, w12
	add	w8, w8, w11
	ldur	w11, [x29, #-56]
	ldr	w12, [x10, #20]
	mul	w11, w11, w12
	add	w8, w8, w11
	ldr	w10, [x10, #20]
	ldur	w11, [x29, #-52]
	subs	w10, w10, w11
	subs	w10, w10, #1
	add	w8, w8, w10
	stur	w8, [x29, #-88]
	ldr	x8, [x9]
	ldursw	x10, [x29, #-84]
	ldr	w8, [x8, x10, lsl #2]
	stur	w8, [x29, #-92]
	ldr	x8, [x9]
	ldursw	x10, [x29, #-88]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x10, [x9]
	ldursw	x11, [x29, #-84]
	str	w8, [x10, x11, lsl #2]
	ldur	w8, [x29, #-92]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-88]
	str	w8, [x9, x10, lsl #2]
	ldur	w8, [x29, #-64]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=4
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x9, [x8]
	ldursw	x10, [x29, #-84]
	ldr	s0, [x9, x10, lsl #2]
	fneg	s0, s0
	ldr	x9, [x8]
	ldursw	x10, [x29, #-84]
	str	s0, [x9, x10, lsl #2]
	ldr	x9, [x8]
	ldursw	x10, [x29, #-88]
	ldr	s0, [x9, x10, lsl #2]
	fneg	s0, s0
	ldr	x8, [x8]
	ldursw	x9, [x29, #-88]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=4
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=4
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_8
.LBB0_13:                               //   in Loop: Header=BB0_6 Depth=3
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_6 Depth=3
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_6
.LBB0_15:                               //   in Loop: Header=BB0_4 Depth=2
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_4 Depth=2
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_4
.LBB0_17:                               //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_2
.LBB0_19:
	stur	wzr, [x29, #-52]
	b	.LBB0_20
.LBB0_20:                               // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-52]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #144]                  // 8-byte Folded Reload
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	ldr	x10, [x8]
	ldursw	x11, [x29, #-52]
	ldr	s0, [x10, x11, lsl #2]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-52]
	ldr	s1, [x9, x10, lsl #2]
	fadd	s0, s0, s1
	fcvt	d0, s0
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	ldr	x8, [x8]
	ldursw	x9, [x29, #-52]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_20
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	stur	wzr, [x29, #-52]
	b	.LBB0_25
.LBB0_25:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_27 Depth 2
                                        //       Child Loop BB0_29 Depth 3
                                        //       Child Loop BB0_40 Depth 3
                                        //       Child Loop BB0_61 Depth 3
                                        //       Child Loop BB0_47 Depth 3
	ldr	x10, [sp, #144]                 // 8-byte Folded Reload
	ldur	w8, [x29, #-52]
	ldr	w9, [x10, #20]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_73
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-52]
	ldr	w10, [x9, #20]
	sdiv	w8, w8, w10
	stur	w8, [x29, #-96]
	ldur	w8, [x29, #-52]
	ldr	w10, [x9, #20]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-100]
	stur	wzr, [x29, #-60]
	b	.LBB0_27
.LBB0_27:                               //   Parent Loop BB0_25 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_29 Depth 3
                                        //       Child Loop BB0_40 Depth 3
                                        //       Child Loop BB0_61 Depth 3
                                        //       Child Loop BB0_47 Depth 3
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_71
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w10, [x9, #20]
	mul	w8, w8, w10
	ldr	w9, [x9, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	stur	w8, [x29, #-104]
	stur	wzr, [x29, #-56]
	b	.LBB0_29
.LBB0_29:                               //   Parent Loop BB0_25 Depth=1
                                        //     Parent Loop BB0_27 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-56]
	ldr	w9, [x9, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_32
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_29 Depth=3
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-104]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	ldursw	x9, [x29, #-56]
	movi	d0, #0000000000000000
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_29 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_29
.LBB0_32:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #20]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #88]                   // 4-byte Folded Spill
	ldr	w8, [x1, #32]
	str	w8, [sp, #92]                   // 4-byte Folded Spill
	sub	x0, x29, #168
	str	x0, [sp, #80]                   // 8-byte Folded Spill
	mov	x2, #56
	str	x2, [sp, #112]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	ldr	w2, [sp, #88]                   // 4-byte Folded Reload
	ldr	w3, [sp, #92]                   // 4-byte Folded Reload
	mov	w1, wzr
	str	w1, [sp, #128]                  // 4-byte Folded Spill
	bl	entry_index
	ldr	x2, [sp, #112]                  // 8-byte Folded Reload
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	stur	w0, [x29, #-108]
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #20]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	sub	x0, x29, #232
	str	x0, [sp, #96]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w2, [sp, #108]                  // 4-byte Folded Reload
	ldr	w3, [sp, #128]                  // 4-byte Folded Reload
	mov	w1, w3
	bl	entry_index
	ldr	x2, [sp, #112]                  // 8-byte Folded Reload
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	stur	w0, [x29, #-172]
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #20]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #132]                  // 4-byte Folded Spill
	add	x0, sp, #360
	str	x0, [sp, #120]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #120]                  // 8-byte Folded Reload
	ldr	w1, [sp, #128]                  // 4-byte Folded Reload
	ldr	w2, [sp, #132]                  // 4-byte Folded Reload
	mov	w3, #4
	bl	entry_index
	ldr	x8, [sp, #144]                  // 8-byte Folded Reload
	stur	w0, [x29, #-236]
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_34
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_27 Depth=2
	fmov	s0, #1.00000000
	str	s0, [sp, #76]                   // 4-byte Folded Spill
	b	.LBB0_35
.LBB0_34:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-108]
	ldr	s0, [x8, x9, lsl #2]
	str	s0, [sp, #76]                   // 4-byte Folded Spill
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldr	s0, [sp, #76]                   // 4-byte Folded Reload
	str	s0, [sp, #356]
	ldr	x0, [x8, #8]
	ldr	w1, [x9, #48]
	ldur	w2, [x29, #-60]
	ldur	w3, [x29, #-172]
	ldur	w4, [x29, #-100]
	ldur	w5, [x29, #-96]
	ldr	w6, [x9, #20]
	ldr	w7, [x9, #16]
	ldr	w8, [x9, #20]
	ldr	w9, [x9, #16]
	mul	w8, w8, w9
	mov	x9, sp
	str	w8, [x9]
	bl	get_region_box
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-104]
	add	x8, x8, x9, lsl #5
	str	w0, [x8, #24]
	ldr	s0, [sp, #356]
	ldur	s1, [x29, #-20]
	fcmp	s0, s1
	b.le	.LBB0_37
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	s0, [sp, #356]
	str	s0, [sp, #72]                   // 4-byte Folded Spill
	b	.LBB0_38
.LBB0_37:                               //   in Loop: Header=BB0_27 Depth=2
	movi	d0, #0000000000000000
	str	s0, [sp, #72]                   // 4-byte Folded Spill
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	s0, [sp, #72]                   // 4-byte Folded Reload
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-104]
	add	x9, x9, x10, lsl #5
	str	s0, [x9, #8]
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-104]
	add	x8, x8, x9, lsl #5
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_44
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_27 Depth=2
	stur	wzr, [x29, #-56]
	b	.LBB0_40
.LBB0_40:                               //   Parent Loop BB0_25 Depth=1
                                        //     Parent Loop BB0_27 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-56]
	ldr	w9, [x9, #32]
	subs	w9, w9, #4
	subs	w8, w8, w9
	b.ge	.LBB0_43
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_40 Depth=3
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	ldr	x12, [sp, #144]                 // 8-byte Folded Reload
	ldr	x8, [x12]
	ldur	w10, [x29, #-236]
	ldur	w11, [x29, #-56]
	ldr	w13, [x12, #20]
	mul	w11, w11, w13
	ldr	w12, [x12, #16]
	mul	w11, w11, w12
	add	w10, w10, w11
	ldr	w8, [x8, w10, sxtw #2]
	ldr	x9, [x9, #32]
	ldursw	x10, [x29, #-104]
	add	x9, x9, x10, lsl #5
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-56]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_40 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_40
.LBB0_43:                               //   in Loop: Header=BB0_27 Depth=2
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #20]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #64]                   // 4-byte Folded Spill
	ldr	w8, [x1, #32]
	ldr	x9, [x1, #40]
	subs	x9, x9, #0
	cset	w9, eq
	and	w9, w9, #0x1
	add	w8, w8, w9
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	add	x0, sp, #296
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	mov	x2, #56
	bl	memcpy
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	w2, [sp, #64]                   // 4-byte Folded Reload
	ldr	w3, [sp, #68]                   // 4-byte Folded Reload
	mov	w1, wzr
	bl	entry_index
	ldr	x8, [sp, #144]                  // 8-byte Folded Reload
	str	w0, [sp, #352]
	ldr	w8, [x8, #36]
	cbz	w8, .LBB0_59
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldrsw	x10, [sp, #352]
	add	x0, x8, x10, lsl #2
	ldr	w1, [x9, #28]
	ldr	w2, [x9, #36]
	ldr	w8, [x9, #20]
	ldr	w9, [x9, #16]
	mul	w4, w8, w9
	mov	w3, wzr
	bl	hierarchy_predictions
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	cbz	x8, .LBB0_54
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_27 Depth=2
	stur	wzr, [x29, #-56]
	b	.LBB0_47
.LBB0_47:                               //   Parent Loop BB0_25 Depth=1
                                        //     Parent Loop BB0_27 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-56]
	subs	w8, w8, #200
	b.ge	.LBB0_53
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_47 Depth=3
	ldr	x9, [sp, #136]                  // 8-byte Folded Reload
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w10, [x1, #20]
	mul	w8, w8, w10
	ldr	w10, [x1, #16]
	mul	w8, w8, w10
	ldur	w10, [x29, #-52]
	add	w8, w8, w10
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	ldr	w8, [x1, #32]
	add	w8, w8, #1
	ldr	x9, [x9, #48]
	ldursw	x10, [x29, #-56]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	add	x0, sp, #232
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mov	x2, #56
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldr	w2, [sp, #48]                   // 4-byte Folded Reload
	ldr	w3, [sp, #52]                   // 4-byte Folded Reload
	mov	w1, wzr
	bl	entry_index
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	str	w0, [sp, #292]
	ldr	s0, [sp, #356]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #292]
	ldr	s1, [x8, x9, lsl #2]
	fmul	s0, s0, s1
	str	s0, [sp, #228]
	ldr	s0, [sp, #228]
	ldur	s1, [x29, #-20]
	fcmp	s0, s1
	b.le	.LBB0_50
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_47 Depth=3
	ldr	s0, [sp, #228]
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_51
.LBB0_50:                               //   in Loop: Header=BB0_47 Depth=3
	movi	d0, #0000000000000000
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_51
.LBB0_51:                               //   in Loop: Header=BB0_47 Depth=3
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	s0, [sp, #36]                   // 4-byte Folded Reload
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-104]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	ldursw	x9, [x29, #-56]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_47 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_47
.LBB0_53:                               //   in Loop: Header=BB0_27 Depth=2
	b	.LBB0_58
.LBB0_54:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldrsw	x10, [sp, #352]
	add	x0, x8, x10, lsl #2
	ldr	w1, [x9, #36]
	ldur	s0, [x29, #-36]
	ldr	w8, [x9, #20]
	ldr	w9, [x9, #16]
	mul	w2, w8, w9
	bl	hierarchy_top_prediction
	str	w0, [sp, #224]
	ldr	s0, [sp, #356]
	ldur	s1, [x29, #-20]
	fcmp	s0, s1
	b.le	.LBB0_56
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	s0, [sp, #356]
	str	s0, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_57
.LBB0_56:                               //   in Loop: Header=BB0_27 Depth=2
	movi	d0, #0000000000000000
	str	s0, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_57
.LBB0_57:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	s0, [sp, #32]                   // 4-byte Folded Reload
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-104]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	ldrsw	x9, [sp, #224]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_27 Depth=2
	b	.LBB0_69
.LBB0_59:                               //   in Loop: Header=BB0_27 Depth=2
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-104]
	add	x8, x8, x9, lsl #5
	ldr	s0, [x8, #8]
	fcmp	s0, #0.0
	b.eq	.LBB0_68
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_27 Depth=2
	stur	wzr, [x29, #-56]
	b	.LBB0_61
.LBB0_61:                               //   Parent Loop BB0_25 Depth=1
                                        //     Parent Loop BB0_27 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-56]
	ldr	w9, [x9, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_67
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_61 Depth=3
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #20]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldr	w8, [x1, #32]
	add	w8, w8, #1
	ldur	w9, [x29, #-56]
	add	w8, w8, w9
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	add	x0, sp, #160
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	mov	x2, #56
	bl	memcpy
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	w2, [sp, #24]                   // 4-byte Folded Reload
	ldr	w3, [sp, #28]                   // 4-byte Folded Reload
	mov	w1, wzr
	bl	entry_index
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	str	w0, [sp, #220]
	ldr	s0, [sp, #356]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #220]
	ldr	s1, [x8, x9, lsl #2]
	fmul	s0, s0, s1
	str	s0, [sp, #156]
	ldr	s0, [sp, #156]
	ldur	s1, [x29, #-20]
	fcmp	s0, s1
	b.le	.LBB0_64
	b	.LBB0_63
.LBB0_63:                               //   in Loop: Header=BB0_61 Depth=3
	ldr	s0, [sp, #156]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_65
.LBB0_64:                               //   in Loop: Header=BB0_61 Depth=3
	movi	d0, #0000000000000000
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_61 Depth=3
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	s0, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-104]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	ldursw	x9, [x29, #-56]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_61 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_61
.LBB0_67:                               //   in Loop: Header=BB0_27 Depth=2
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_27 Depth=2
	b	.LBB0_69
.LBB0_69:                               //   in Loop: Header=BB0_27 Depth=2
	b	.LBB0_70
.LBB0_70:                               //   in Loop: Header=BB0_27 Depth=2
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_27
.LBB0_71:                               //   in Loop: Header=BB0_25 Depth=1
	b	.LBB0_72
.LBB0_72:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_25
.LBB0_73:
	ldr	x9, [sp, #144]                  // 8-byte Folded Reload
	ldr	x8, [sp, #136]                  // 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldr	w8, [x9, #20]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldr	w9, [x9, #24]
	mul	w1, w8, w9
	ldur	w2, [x29, #-4]
	ldur	w3, [x29, #-8]
	ldur	w4, [x29, #-12]
	ldur	w5, [x29, #-16]
	ldur	w6, [x29, #-40]
	bl	correct_region_boxes
	add	sp, sp, #656
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	get_region_detections, .Lfunc_end0-get_region_detections
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym entry_index
	.addrsig_sym get_region_box
	.addrsig_sym hierarchy_predictions
	.addrsig_sym hierarchy_top_prediction
	.addrsig_sym correct_region_boxes