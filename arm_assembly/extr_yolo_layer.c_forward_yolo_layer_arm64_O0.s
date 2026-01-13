	.text
	.globl	forward_yolo_layer              // -- Begin function forward_yolo_layer
	.p2align	2
	.type	forward_yolo_layer,@function
forward_yolo_layer:                     // @forward_yolo_layer
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1424
	add	x8, sp, #632
	str	x8, [sp, #216]                  // 8-byte Folded Spill
	mov	x9, x0
	str	x9, [sp, #224]                  // 8-byte Folded Spill
	str	x1, [sp, #232]                  // 8-byte Folded Spill
	ldr	x0, [x9, #88]
	ldr	w1, [x1, #24]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	str	w8, [sp, #176]                  // 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	str	w8, [sp, #180]                  // 4-byte Folded Spill
	sub	x0, x29, #120
	str	x0, [sp, #168]                  // 8-byte Folded Spill
	mov	x2, #96
	str	x2, [sp, #184]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #168]                  // 8-byte Folded Reload
	ldr	w1, [sp, #176]                  // 4-byte Folded Reload
	ldr	w2, [sp, #180]                  // 4-byte Folded Reload
	mov	w3, wzr
	bl	entry_index
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	stur	w0, [x29, #-24]
	ldr	x8, [x9, #88]
	ldursw	x10, [x29, #-24]
	add	x0, x8, x10, lsl #3
	ldr	w10, [x9, #12]
	mov	w8, #2
	mul	w8, w8, w10
	ldr	w9, [x9, #16]
	mul	w1, w8, w9
	adrp	x8, LOGISTIC
	str	x8, [sp, #208]                  // 8-byte Folded Spill
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	ldr	x2, [sp, #184]                  // 8-byte Folded Reload
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	str	w8, [sp, #200]                  // 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	str	w8, [sp, #204]                  // 4-byte Folded Spill
	sub	x0, x29, #216
	str	x0, [sp, #192]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w1, [sp, #200]                  // 4-byte Folded Reload
	ldr	w2, [sp, #204]                  // 4-byte Folded Reload
	mov	w3, #4
	bl	entry_index
	ldr	x10, [sp, #224]                 // 8-byte Folded Reload
	ldr	x8, [sp, #208]                  // 8-byte Folded Reload
	stur	w0, [x29, #-24]
	ldr	x9, [x10, #88]
	ldursw	x11, [x29, #-24]
	add	x0, x9, x11, lsl #3
	ldr	w9, [x10, #20]
	add	w9, w9, #1
	ldr	w11, [x10, #12]
	mul	w9, w9, w11
	ldr	w10, [x10, #16]
	mul	w1, w9, w10
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_8:
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldr	x0, [x9, #72]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	mov	w1, wzr
	bl	memset
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	w8, [x8, #20]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_61
.LBB0_10:
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	movi	d0, #0000000000000000
	stur	s0, [x29, #-220]
	stur	s0, [x29, #-224]
	stur	s0, [x29, #-228]
	stur	s0, [x29, #-232]
	stur	s0, [x29, #-236]
	stur	s0, [x29, #-240]
	stur	wzr, [x29, #-244]
	stur	wzr, [x29, #-248]
	ldr	x8, [x8, #80]
	str	xzr, [x8]
	stur	wzr, [x29, #-12]
	b	.LBB0_11
.LBB0_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_13 Depth 2
                                        //       Child Loop BB0_15 Depth 3
                                        //         Child Loop BB0_17 Depth 4
                                        //           Child Loop BB0_19 Depth 5
                                        //     Child Loop BB0_39 Depth 2
                                        //       Child Loop BB0_43 Depth 3
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_60
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	stur	wzr, [x29, #-8]
	b	.LBB0_13
.LBB0_13:                               //   Parent Loop BB0_11 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_15 Depth 3
                                        //         Child Loop BB0_17 Depth 4
                                        //           Child Loop BB0_19 Depth 5
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_38
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=2
	stur	wzr, [x29, #-4]
	b	.LBB0_15
.LBB0_15:                               //   Parent Loop BB0_11 Depth=1
                                        //     Parent Loop BB0_13 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_17 Depth 4
                                        //           Child Loop BB0_19 Depth 5
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_36
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=3
	stur	wzr, [x29, #-20]
	b	.LBB0_17
.LBB0_17:                               //   Parent Loop BB0_11 Depth=1
                                        //     Parent Loop BB0_13 Depth=2
                                        //       Parent Loop BB0_15 Depth=3
                                        // =>      This Loop Header: Depth=4
                                        //           Child Loop BB0_19 Depth 5
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_34
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=4
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	str	w8, [sp, #160]                  // 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	ldr	w10, [x1, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	str	w8, [sp, #164]                  // 4-byte Folded Spill
	add	x0, sp, #1072
	str	x0, [sp, #152]                  // 8-byte Folded Spill
	mov	x2, #96
	bl	memcpy
	ldr	x0, [sp, #152]                  // 8-byte Folded Reload
	ldr	w1, [sp, #160]                  // 4-byte Folded Reload
	ldr	w2, [sp, #164]                  // 4-byte Folded Reload
	mov	w3, wzr
	bl	entry_index
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	stur	w0, [x29, #-252]
	ldr	x0, [x9, #88]
	ldr	x1, [x9, #24]
	ldr	x10, [x9, #32]
	ldursw	x11, [x29, #-20]
	ldr	w2, [x10, x11, lsl #2]
	ldur	w3, [x29, #-252]
	ldur	w4, [x29, #-4]
	ldur	w5, [x29, #-8]
	ldr	w6, [x9, #12]
	ldr	w7, [x9, #16]
	ldr	w11, [x8]
	ldr	w10, [x8, #4]
	ldr	w8, [x9, #12]
	ldr	w9, [x9, #16]
	mul	w8, w8, w9
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	add	x8, sp, #1052
	bl	get_yolo_box
	movi	d0, #0000000000000000
	str	s0, [sp, #1048]
	str	wzr, [sp, #1044]
	stur	wzr, [x29, #-16]
	b	.LBB0_19
.LBB0_19:                               //   Parent Loop BB0_11 Depth=1
                                        //     Parent Loop BB0_13 Depth=2
                                        //       Parent Loop BB0_15 Depth=3
                                        //         Parent Loop BB0_17 Depth=4
                                        // =>        This Inner Loop Header: Depth=5
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w9, [x9, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_26
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=5
	ldr	x10, [sp, #224]                 // 8-byte Folded Reload
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldur	w9, [x29, #-16]
	mov	w11, #5
	mul	w9, w9, w11
	add	x8, x8, w9, sxtw #2
	ldur	w9, [x29, #-12]
	ldr	w10, [x10, #44]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	add	x8, sp, #1024
	mov	w1, #1
	bl	float_to_box
	ldr	w8, [sp, #1024]
	cbnz	w8, .LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_17 Depth=4
	b	.LBB0_26
.LBB0_22:                               //   in Loop: Header=BB0_19 Depth=5
	add	x8, sp, #797
	ldur	q0, [x8, #255]
	add	x0, sp, #992
	str	q0, [sp, #992]
	ldr	w8, [sp, #1068]
	str	w8, [sp, #1008]
	ldr	q0, [sp, #1024]
	add	x1, sp, #960
	str	q0, [sp, #960]
	ldr	w8, [sp, #1040]
	str	w8, [sp, #976]
	bl	box_iou
	str	s0, [sp, #1020]
	ldr	s0, [sp, #1020]
	ldr	s1, [sp, #1048]
	fcmp	s0, s1
	b.le	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_19 Depth=5
	ldr	w8, [sp, #1020]
	str	w8, [sp, #1048]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #1044]
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_19 Depth=5
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_19 Depth=5
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_19
.LBB0_26:                               //   in Loop: Header=BB0_17 Depth=4
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	str	w8, [sp, #144]                  // 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	ldr	w10, [x1, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	str	w8, [sp, #148]                  // 4-byte Folded Spill
	add	x0, sp, #856
	str	x0, [sp, #136]                  // 8-byte Folded Spill
	mov	x2, #96
	bl	memcpy
	ldr	x0, [sp, #136]                  // 8-byte Folded Reload
	ldr	w1, [sp, #144]                  // 4-byte Folded Reload
	ldr	w2, [sp, #148]                  // 4-byte Folded Reload
	mov	w3, #4
	bl	entry_index
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	str	w0, [sp, #956]
	ldr	x9, [x8, #88]
	ldrsw	x10, [sp, #956]
	ldr	d0, [x9, x10, lsl #3]
	fmov	x9, d0
	scvtf	s1, x9
	ldur	s0, [x29, #-240]
	fadd	s0, s0, s1
	stur	s0, [x29, #-240]
	ldr	x9, [x8, #88]
	ldrsw	x10, [sp, #956]
	ldr	x10, [x9, x10, lsl #3]
	mov	x9, xzr
	subs	x9, x9, x10
	ldr	x10, [x8, #72]
	ldrsw	x11, [sp, #956]
	str	x9, [x10, x11, lsl #3]
	ldr	s0, [sp, #1048]
	ldr	s1, [x8, #48]
	fcmp	s0, s1
	b.le	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_17 Depth=4
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	ldr	x9, [x8, #72]
	ldrsw	x10, [sp, #956]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_17 Depth=4
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	ldr	s0, [sp, #1048]
	ldr	s1, [x8, #52]
	fcmp	s0, s1
	b.le	.LBB0_32
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_17 Depth=4
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	ldr	x9, [sp, #232]                  // 8-byte Folded Reload
	ldr	x10, [x8, #88]
	ldrsw	x11, [sp, #956]
	ldr	x11, [x10, x11, lsl #3]
	mov	x10, #1
	subs	x10, x10, x11
	ldr	x11, [x8, #72]
	ldrsw	x12, [sp, #956]
	str	x10, [x11, x12, lsl #3]
	ldr	x9, [x9, #8]
	ldr	w10, [sp, #1044]
	mov	w11, #5
	mul	w10, w10, w11
	ldur	w11, [x29, #-12]
	ldr	w12, [x8, #44]
	mul	w11, w11, w12
	add	w10, w10, w11
	add	w10, w10, #4
	ldr	w9, [x9, w10, sxtw #2]
	str	w9, [sp, #852]
	ldr	x8, [x8, #56]
	cbz	x8, .LBB0_31
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_17 Depth=4
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #852]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #852]
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_17 Depth=4
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	str	w8, [sp, #124]                  // 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	ldr	w10, [x1, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	str	w8, [sp, #128]                  // 4-byte Folded Spill
	add	x0, sp, #752
	str	x0, [sp, #112]                  // 8-byte Folded Spill
	mov	x2, #96
	bl	memcpy
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	ldr	w1, [sp, #124]                  // 4-byte Folded Reload
	ldr	w2, [sp, #128]                  // 4-byte Folded Reload
	mov	w3, #5
	str	w3, [sp, #132]                  // 4-byte Folded Spill
	bl	entry_index
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	str	w0, [sp, #848]
	ldr	x0, [x9, #88]
	ldr	x1, [x9, #72]
	ldr	w2, [sp, #848]
	ldr	w3, [sp, #852]
	ldr	w4, [x9, #20]
	ldr	w8, [x9, #12]
	ldr	w9, [x9, #16]
	mul	w5, w8, w9
	mov	x6, xzr
	bl	delta_yolo_class
	ldr	w11, [sp, #132]                 // 4-byte Folded Reload
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	x10, [sp, #224]                 // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	w9, [sp, #1044]
	mul	w9, w9, w11
	add	x8, x8, w9, sxtw #2
	ldur	w9, [x29, #-12]
	ldr	w10, [x10, #44]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	add	x8, sp, #732
	mov	w1, #1
	bl	float_to_box
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	x15, [sp, #224]                 // 8-byte Folded Reload
	ldr	x9, [sp, #216]                  // 8-byte Folded Reload
	ldr	x1, [x15, #88]
	ldr	x2, [x15, #24]
	ldr	x10, [x15, #32]
	ldursw	x11, [x29, #-20]
	ldr	w3, [x10, x11, lsl #2]
	ldur	w4, [x29, #-252]
	ldur	w5, [x29, #-4]
	ldur	w6, [x29, #-8]
	ldr	w7, [x15, #12]
	ldr	w14, [x15, #16]
	ldr	w13, [x8]
	ldr	w12, [x8, #4]
	ldr	x11, [x15, #72]
	ldr	w8, [sp, #736]
	ldr	w10, [sp, #740]
	mul	w10, w8, w10
	mov	w8, #2
	subs	w10, w8, w10
	ldr	w8, [x15, #12]
	ldr	w15, [x15, #16]
	mul	w8, w8, w15
	ldur	q0, [x9, #100]
	add	x0, sp, #704
	str	q0, [sp, #704]
	ldr	w9, [sp, #748]
	str	w9, [sp, #720]
	mov	x9, sp
	str	w14, [x9]
	str	w13, [x9, #8]
	str	w12, [x9, #16]
	str	x11, [x9, #24]
	str	w10, [x9, #32]
	str	w8, [x9, #40]
	bl	delta_yolo_box
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_17 Depth=4
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_17 Depth=4
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_17
.LBB0_34:                               //   in Loop: Header=BB0_15 Depth=3
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_15 Depth=3
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_15
.LBB0_36:                               //   in Loop: Header=BB0_13 Depth=2
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_13 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_13
.LBB0_38:                               //   in Loop: Header=BB0_11 Depth=1
	stur	wzr, [x29, #-16]
	b	.LBB0_39
.LBB0_39:                               //   Parent Loop BB0_11 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_43 Depth 3
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w9, [x9, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_58
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	x10, [sp, #224]                 // 8-byte Folded Reload
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldur	w9, [x29, #-16]
	mov	w11, #5
	mul	w9, w9, w11
	add	x8, x8, w9, sxtw #2
	ldur	w9, [x29, #-12]
	ldr	w10, [x10, #44]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	add	x8, sp, #684
	mov	w1, #1
	bl	float_to_box
	ldr	w8, [sp, #684]
	cbnz	w8, .LBB0_42
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_58
.LBB0_42:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	x8, [sp, #216]                  // 8-byte Folded Reload
	ldr	x10, [sp, #224]                 // 8-byte Folded Reload
	movi	d0, #0000000000000000
	str	s0, [sp, #680]
	str	wzr, [sp, #676]
	ldr	w9, [sp, #684]
	ldr	w11, [x10, #12]
	mul	w9, w9, w11
	stur	w9, [x29, #-4]
	ldr	w9, [sp, #696]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	stur	w9, [x29, #-8]
	ldur	q0, [x8, #52]
	str	q0, [sp, #656]
	ldr	w8, [sp, #700]
	str	w8, [sp, #672]
	str	wzr, [sp, #668]
	str	wzr, [sp, #656]
	stur	wzr, [x29, #-20]
	b	.LBB0_43
.LBB0_43:                               //   Parent Loop BB0_11 Depth=1
                                        //     Parent Loop BB0_39 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #64]
	subs	w8, w8, w9
	b.ge	.LBB0_48
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_43 Depth=3
	ldr	x8, [sp, #216]                  // 8-byte Folded Reload
	ldr	x10, [sp, #232]                 // 8-byte Folded Reload
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	str	xzr, [sp, #632]
	str	xzr, [sp, #640]
	str	wzr, [sp, #648]
	ldr	x12, [x9, #24]
	ldur	w13, [x29, #-20]
	mov	w11, #2
	mul	w13, w11, w13
	ldr	w12, [x12, w13, sxtw #2]
	ldr	w13, [x10]
	sdiv	w12, w12, w13
	str	w12, [sp, #636]
	ldr	x9, [x9, #24]
	ldur	w12, [x29, #-20]
	mul	w11, w11, w12
	add	w11, w11, #1
	ldr	w9, [x9, w11, sxtw #2]
	ldr	w10, [x10, #4]
	sdiv	w9, w9, w10
	str	w9, [sp, #640]
	ldr	q0, [x8]
	add	x0, sp, #608
	str	q0, [sp, #608]
	ldr	w8, [sp, #648]
	str	w8, [sp, #624]
	ldr	q0, [sp, #656]
	add	x1, sp, #576
	str	q0, [sp, #576]
	ldr	w8, [sp, #672]
	str	w8, [sp, #592]
	bl	box_iou
	str	s0, [sp, #628]
	ldr	s0, [sp, #628]
	ldr	s1, [sp, #680]
	fcmp	s0, s1
	b.le	.LBB0_46
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_43 Depth=3
	ldr	w8, [sp, #628]
	str	w8, [sp, #680]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #676]
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_43 Depth=3
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_43 Depth=3
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_43
.LBB0_48:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldr	w1, [sp, #676]
	ldr	w2, [x8, #8]
	bl	int_index
	str	w0, [sp, #572]
	ldr	w8, [sp, #572]
	tbnz	w8, #31, .LBB0_56
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	str	w8, [sp, #80]                   // 4-byte Folded Spill
	ldr	w8, [sp, #572]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	ldr	w10, [x1, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	str	w8, [sp, #84]                   // 4-byte Folded Spill
	add	x0, sp, #472
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	mov	x2, #96
	str	x2, [sp, #88]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	ldr	w1, [sp, #80]                   // 4-byte Folded Reload
	ldr	w2, [sp, #84]                   // 4-byte Folded Reload
	mov	w3, wzr
	bl	entry_index
	ldr	x9, [sp, #216]                  // 8-byte Folded Reload
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	x15, [sp, #224]                 // 8-byte Folded Reload
	str	w0, [sp, #568]
	ldr	x1, [x15, #88]
	ldr	x2, [x15, #24]
	ldr	w3, [sp, #676]
	ldr	w4, [sp, #568]
	ldur	w5, [x29, #-4]
	ldur	w6, [x29, #-8]
	ldr	w7, [x15, #12]
	ldr	w14, [x15, #16]
	ldr	w13, [x8]
	ldr	w12, [x8, #4]
	ldr	x11, [x15, #72]
	ldr	w8, [sp, #688]
	ldr	w10, [sp, #692]
	mul	w10, w8, w10
	mov	w8, #2
	subs	w10, w8, w10
	ldr	w8, [x15, #12]
	ldr	w15, [x15, #16]
	mul	w8, w8, w15
	ldur	q0, [x9, #52]
	add	x0, sp, #448
	str	q0, [sp, #448]
	ldr	w9, [sp, #700]
	str	w9, [sp, #464]
	mov	x9, sp
	str	w14, [x9]
	str	w13, [x9, #8]
	str	w12, [x9, #16]
	str	x11, [x9, #24]
	str	w10, [x9, #32]
	str	w8, [x9, #40]
	bl	delta_yolo_box
	ldr	x2, [sp, #88]                   // 8-byte Folded Reload
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	str	s0, [sp, #468]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #104]                  // 4-byte Folded Spill
	ldr	w8, [sp, #572]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	ldr	w10, [x1, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	add	x0, sp, #344
	str	x0, [sp, #96]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w1, [sp, #104]                  // 4-byte Folded Reload
	ldr	w2, [sp, #108]                  // 4-byte Folded Reload
	mov	w3, #4
	bl	entry_index
	ldr	x9, [sp, #232]                  // 8-byte Folded Reload
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	str	w0, [sp, #444]
	ldr	x10, [x8, #88]
	ldrsw	x11, [sp, #444]
	ldr	d0, [x10, x11, lsl #3]
	fmov	x10, d0
	scvtf	s1, x10
	ldur	s0, [x29, #-236]
	fadd	s0, s0, s1
	stur	s0, [x29, #-236]
	ldr	x10, [x8, #88]
	ldrsw	x11, [sp, #444]
	ldr	x11, [x10, x11, lsl #3]
	mov	x10, #1
	subs	x10, x10, x11
	ldr	x11, [x8, #72]
	ldrsw	x12, [sp, #444]
	str	x10, [x11, x12, lsl #3]
	ldr	x9, [x9, #8]
	ldur	w10, [x29, #-16]
	mov	w11, #5
	mul	w10, w10, w11
	ldur	w11, [x29, #-12]
	ldr	w12, [x8, #44]
	mul	w11, w11, w12
	add	w10, w10, w11
	add	w10, w10, #4
	ldr	w9, [x9, w10, sxtw #2]
	str	w9, [sp, #340]
	ldr	x8, [x8, #56]
	cbz	x8, .LBB0_51
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	x8, [sp, #224]                  // 8-byte Folded Reload
	ldr	x8, [x8, #56]
	ldrsw	x9, [sp, #340]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #340]
	b	.LBB0_51
.LBB0_51:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	str	w8, [sp, #64]                   // 4-byte Folded Spill
	ldr	w8, [sp, #572]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	ldr	w10, [x1, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-4]
	add	w8, w8, w9
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	add	x0, sp, #240
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	mov	x2, #96
	bl	memcpy
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	w1, [sp, #64]                   // 4-byte Folded Reload
	ldr	w2, [sp, #68]                   // 4-byte Folded Reload
	mov	w3, #5
	bl	entry_index
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	str	w0, [sp, #336]
	ldr	x0, [x9, #88]
	ldr	x1, [x9, #72]
	ldr	w2, [sp, #336]
	ldr	w3, [sp, #340]
	ldr	w4, [x9, #20]
	ldr	w8, [x9, #12]
	ldr	w9, [x9, #16]
	mul	w5, w8, w9
	sub	x6, x29, #232
	bl	delta_yolo_class
	ldur	w8, [x29, #-244]
	add	w8, w8, #1
	stur	w8, [x29, #-244]
	ldur	w8, [x29, #-248]
	add	w8, w8, #1
	stur	w8, [x29, #-248]
	ldr	s0, [sp, #468]
	fcvt	d0, s0
	fmov	d1, #0.50000000
	fcmp	d0, d1
	b.le	.LBB0_53
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_39 Depth=2
	ldur	s0, [x29, #-224]
	fmov	s1, #1.00000000
	fadd	s0, s0, s1
	stur	s0, [x29, #-224]
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	s0, [sp, #468]
	fcvt	d0, s0
	fmov	d1, #0.75000000
	fcmp	d0, d1
	b.le	.LBB0_55
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_39 Depth=2
	ldur	s0, [x29, #-228]
	fmov	s1, #1.00000000
	fadd	s0, s0, s1
	stur	s0, [x29, #-228]
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_39 Depth=2
	ldr	s1, [sp, #468]
	ldur	s0, [x29, #-220]
	fadd	s0, s0, s1
	stur	s0, [x29, #-220]
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_39 Depth=2
	b	.LBB0_57
.LBB0_57:                               //   in Loop: Header=BB0_39 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_39
.LBB0_58:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_11
.LBB0_60:
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldr	x0, [x9, #72]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	bl	mag_array
	mov	w1, #2
	bl	pow
	ldr	x8, [sp, #232]                  // 8-byte Folded Reload
	ldr	x9, [sp, #224]                  // 8-byte Folded Reload
	ldr	x10, [x9, #80]
	str	x0, [x10]
	ldr	w1, [x8, #16]
	ldur	s0, [x29, #-220]
	ldur	s1, [x29, #-244]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-232]
	ldur	s2, [x29, #-248]
	scvtf	s2, s2
	fdiv	s1, s1, s2
	ldur	s2, [x29, #-236]
	ldur	s3, [x29, #-244]
	scvtf	s3, s3
	fdiv	s2, s2, s3
	ldur	s3, [x29, #-240]
	ldr	w8, [x9, #12]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldr	w10, [x9, #8]
	mul	w8, w8, w10
	ldr	w9, [x9, #4]
	mul	w8, w8, w9
	scvtf	s4, w8
	fdiv	s3, s3, s4
	ldur	s4, [x29, #-224]
	ldur	s5, [x29, #-244]
	scvtf	s5, s5
	fdiv	s4, s4, s5
	ldur	s5, [x29, #-228]
	ldur	s6, [x29, #-244]
	scvtf	s6, s6
	fdiv	s5, s5, s6
	ldur	w2, [x29, #-244]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_61
.LBB0_61:
	add	sp, sp, #1424
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	forward_yolo_layer, .Lfunc_end0-forward_yolo_layer
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
	.asciz	"Region %d Avg IOU: %f, Class: %f, Obj: %f, No Obj: %f, .5R: %f, .75R: %f,  count: %d\n"
	.size	.L.str, 86
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcpy
	.addrsig_sym entry_index
	.addrsig_sym activate_array
	.addrsig_sym memset
	.addrsig_sym get_yolo_box
	.addrsig_sym float_to_box
	.addrsig_sym box_iou
	.addrsig_sym delta_yolo_class
	.addrsig_sym delta_yolo_box
	.addrsig_sym int_index
	.addrsig_sym pow
	.addrsig_sym mag_array
	.addrsig_sym printf
	.addrsig_sym LOGISTIC