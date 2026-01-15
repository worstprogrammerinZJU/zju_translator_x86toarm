	.text
	.globl	get_yolo_detections             // -- Begin function get_yolo_detections
	.p2align	2
	.type	get_yolo_detections,@function
get_yolo_detections:                    // @get_yolo_detections
// %bb.0:
	sub	sp, sp, #448
	stp	x29, x30, [sp, #416]            // 16-byte Folded Spill
	str	x28, [sp, #432]                 // 8-byte Folded Spill
	add	x29, sp, #416
	sub	x9, x29, #72
	str	x9, [sp, #96]                   // 8-byte Folded Spill
	str	x0, [sp, #104]                  // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	stur	w3, [x29, #-12]
	stur	w4, [x29, #-16]
	stur	s0, [x29, #-20]
	str	x5, [x9, #40]
	stur	w6, [x29, #-36]
	str	x7, [x9, #24]
	ldr	x8, [x0]
	str	x8, [x9]
	ldr	w8, [x0, #8]
	subs	w8, w8, #2
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #104]                  // 8-byte Folded Reload
	sub	x0, x29, #120
	str	x0, [sp, #88]                   // 8-byte Folded Spill
	mov	x2, #48
	bl	memcpy
	ldr	x0, [sp, #88]                   // 8-byte Folded Reload
	bl	avg_flipped_yolo
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-124]
	stur	wzr, [x29, #-52]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_5 Depth 2
                                        //       Child Loop BB0_9 Depth 3
	ldr	x10, [sp, #104]                 // 8-byte Folded Reload
	ldur	w8, [x29, #-52]
	ldr	w9, [x10, #12]
	ldr	w10, [x10, #16]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x9, [sp, #104]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-52]
	ldr	w10, [x9, #12]
	sdiv	w8, w8, w10
	stur	w8, [x29, #-128]
	ldur	w8, [x29, #-52]
	ldr	w10, [x9, #12]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-132]
	stur	wzr, [x29, #-60]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_9 Depth 3
	ldr	x9, [sp, #104]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	x1, [sp, #104]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #84]                   // 4-byte Folded Spill
	sub	x0, x29, #184
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	mov	x2, #48
	bl	memcpy
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	ldr	w2, [sp, #84]                   // 4-byte Folded Reload
	mov	w1, wzr
	mov	w3, #4
	bl	entry_index
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	stur	w0, [x29, #-136]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-136]
	ldr	w8, [x8, x9, lsl #2]
	stur	w8, [x29, #-188]
	ldur	s0, [x29, #-188]
	ldur	s1, [x29, #-20]
	fcmp	s0, s1
	b.hi	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=2
	b	.LBB0_16
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	x1, [sp, #104]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	add	x0, sp, #176
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	mov	x2, #48
	bl	memcpy
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	w2, [sp, #68]                   // 4-byte Folded Reload
	mov	w3, wzr
	mov	w1, w3
	bl	entry_index
	ldr	x9, [sp, #104]                  // 8-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	stur	w0, [x29, #-192]
	ldr	x0, [x8]
	ldr	w1, [x9, #40]
	ldr	x8, [x9, #32]
	ldursw	x10, [x29, #-60]
	ldr	w2, [x8, x10, lsl #2]
	ldur	w3, [x29, #-192]
	ldur	w4, [x29, #-132]
	ldur	w5, [x29, #-128]
	ldr	w6, [x9, #12]
	ldr	w7, [x9, #16]
	ldur	w11, [x29, #-12]
	ldur	w10, [x29, #-16]
	ldr	w8, [x9, #12]
	ldr	w9, [x9, #16]
	mul	w8, w8, w9
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	bl	get_yolo_box
	ldr	x8, [sp, #104]                  // 8-byte Folded Reload
	ldr	x9, [sp, #96]                   // 8-byte Folded Reload
	ldr	x10, [x9, #24]
	ldursw	x12, [x29, #-124]
	mov	x11, #24
	mul	x12, x12, x11
	add	x10, x10, x12
	str	w0, [x10, #16]
	ldur	w10, [x29, #-188]
	ldr	x12, [x9, #24]
	ldursw	x13, [x29, #-124]
	mul	x13, x13, x11
	str	w10, [x12, x13]
	ldr	w8, [x8, #24]
	ldr	x9, [x9, #24]
	ldursw	x10, [x29, #-124]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #4]
	stur	wzr, [x29, #-56]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_3 Depth=1
                                        //     Parent Loop BB0_5 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #104]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-56]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=3
	ldr	x1, [sp, #104]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-60]
	ldr	w9, [x1, #12]
	mul	w8, w8, w9
	ldr	w9, [x1, #16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-56]
	add	w8, w8, #5
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	add	x0, sp, #120
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mov	x2, #48
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldr	w2, [sp, #48]                   // 4-byte Folded Reload
	ldr	w3, [sp, #52]                   // 4-byte Folded Reload
	mov	w1, wzr
	bl	entry_index
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	str	w0, [sp, #172]
	ldur	s0, [x29, #-188]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #172]
	ldr	s1, [x8, x9, lsl #2]
	fmul	s0, s0, s1
	str	s0, [sp, #116]
	ldr	s0, [sp, #116]
	ldur	s1, [x29, #-20]
	fcmp	s0, s1
	b.le	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=3
	ldr	s0, [sp, #116]
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=3
	movi	d0, #0000000000000000
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=3
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	s0, [sp, #36]                   // 4-byte Folded Reload
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-124]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-56]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_9
.LBB0_15:                               //   in Loop: Header=BB0_5 Depth=2
	ldur	w8, [x29, #-124]
	add	w8, w8, #1
	stur	w8, [x29, #-124]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_5 Depth=2
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_5
.LBB0_17:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_3
.LBB0_19:
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldur	w1, [x29, #-124]
	ldur	w2, [x29, #-4]
	ldur	w3, [x29, #-8]
	ldur	w4, [x29, #-12]
	ldur	w5, [x29, #-16]
	ldur	w6, [x29, #-36]
	bl	correct_yolo_boxes
	ldur	w0, [x29, #-124]
	ldr	x28, [sp, #432]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #416]            // 16-byte Folded Reload
	add	sp, sp, #448
	ret
.Lfunc_end0:
	.size	get_yolo_detections, .Lfunc_end0-get_yolo_detections
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym avg_flipped_yolo
	.addrsig_sym entry_index
	.addrsig_sym get_yolo_box
	.addrsig_sym correct_yolo_boxes