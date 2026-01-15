	.text
	.globl	get_detection_detections        // -- Begin function get_detection_detections
	.p2align	2
	.type	get_detection_detections,@function
get_detection_detections:               // @get_detection_detections
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	stur	s0, [x29, #-12]
	stur	x3, [x29, #-24]
	ldr	x8, [x0]
	stur	x8, [x29, #-48]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	w9, [x10, #8]
	ldr	w10, [x10, #8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	w10, [x9, #8]
	sdiv	w8, w8, w10
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-28]
	ldr	w10, [x9, #8]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #56]
	stur	wzr, [x29, #-36]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-36]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	w10, [x9, #12]
	mul	w8, w8, w10
	ldur	w10, [x29, #-36]
	add	w8, w8, w10
	str	w8, [sp, #52]
	ldr	w8, [x9, #8]
	ldr	w10, [x9, #8]
	mul	w8, w8, w10
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldur	w10, [x29, #-28]
	ldr	w11, [x9, #12]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldur	w10, [x29, #-36]
	add	w8, w8, w10
	str	w8, [sp, #48]
	ldur	x8, [x29, #-48]
	ldrsw	x10, [sp, #48]
	ldr	w8, [x8, x10, lsl #2]
	str	w8, [sp, #44]
	ldr	w8, [x9, #8]
	ldr	w10, [x9, #8]
	mul	w8, w8, w10
	ldr	w10, [x9, #16]
	ldr	w11, [x9, #12]
	add	w10, w10, w11
	mul	w8, w8, w10
	ldur	w10, [x29, #-28]
	ldr	w11, [x9, #12]
	mul	w10, w10, w11
	ldur	w11, [x29, #-36]
	add	w10, w10, w11
	add	w8, w8, w10, lsl #2
	str	w8, [sp, #40]
	ldur	x8, [x29, #-48]
	ldr	w10, [sp, #40]
	add	w10, w10, #0
	ldr	s0, [x8, w10, sxtw #2]
	ldr	s1, [sp, #56]
	scvtf	s1, s1
	fadd	s0, s0, s1
	ldr	s1, [x9, #8]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-4]
	scvtf	s1, s1
	fmul	s0, s0, s1
	str	s0, [sp, #24]
	ldur	x8, [x29, #-48]
	ldr	w10, [sp, #40]
	add	w10, w10, #1
	ldr	s0, [x8, w10, sxtw #2]
	ldur	s1, [x29, #-52]
	scvtf	s1, s1
	fadd	s0, s0, s1
	ldr	s1, [x9, #8]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldur	s1, [x29, #-8]
	scvtf	s1, s1
	fmul	s0, s0, s1
	str	s0, [sp, #28]
	ldur	x10, [x29, #-48]
	ldr	w11, [sp, #40]
	mov	w8, #2
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	add	w11, w11, #2
	ldr	s0, [x10, w11, sxtw #2]
	ldr	x9, [x9, #24]
	subs	x9, x9, #0
	csinc	w0, w8, wzr, ne
	bl	pow
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldur	w10, [x29, #-4]
	mul	w10, w0, w10
	str	w10, [sp, #32]
	ldur	x10, [x29, #-48]
	ldr	w11, [sp, #40]
	add	w11, w11, #3
	ldr	s0, [x10, w11, sxtw #2]
	ldr	x9, [x9, #24]
	subs	x9, x9, #0
	csinc	w0, w8, wzr, ne
	bl	pow
	ldur	w8, [x29, #-8]
	mul	w8, w0, w8
	str	w8, [sp, #36]
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #52]
	add	x8, x8, x9, lsl #5
	ldur	q0, [sp, #24]
	str	q0, [x8, #16]
	ldr	w8, [sp, #44]
	ldur	x9, [x29, #-24]
	ldrsw	x10, [sp, #52]
	lsl	x10, x10, #5
	str	w8, [x9, x10]
	stur	wzr, [x29, #-32]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-32]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	w9, [x9, #16]
	mul	w8, w8, w9
	str	w8, [sp, #20]
	ldr	s0, [sp, #44]
	ldur	x8, [x29, #-48]
	ldr	w9, [sp, #20]
	ldur	w10, [x29, #-32]
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fmul	s0, s0, s1
	str	s0, [sp, #16]
	ldr	s0, [sp, #16]
	ldur	s1, [x29, #-12]
	fcmp	s0, s1
	b.le	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	s0, [sp, #16]
	str	s0, [sp]                        // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=3
	movi	d0, #0000000000000000
	str	s0, [sp]                        // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	s0, [sp]                        // 4-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #52]
	add	x8, x8, x9, lsl #5
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-32]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_5
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_3
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_1
.LBB0_15:
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	get_detection_detections, .Lfunc_end0-get_detection_detections
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow