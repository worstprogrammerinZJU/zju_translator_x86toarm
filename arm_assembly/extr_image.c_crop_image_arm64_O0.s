	.text
	.globl	crop_image                      // -- Begin function crop_image
	.p2align	2
	.type	crop_image,@function
crop_image:                             // @crop_image
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	x9, x0
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	stur	w3, [x29, #-12]
	stur	w4, [x29, #-16]
	ldur	w0, [x29, #-12]
	ldur	w1, [x29, #-16]
	ldr	w2, [x9]
	bl	make_image
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-24]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-20]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldur	w9, [x29, #-24]
	ldur	w10, [x29, #-8]
	add	w9, w9, w10
	stur	w9, [x29, #-32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-4]
	add	w9, w9, w10
	stur	w9, [x29, #-36]
	movi	d0, #0000000000000000
	stur	s0, [x29, #-40]
	ldur	w0, [x29, #-32]
	ldr	x8, [x8, #16]
	subs	x2, x8, #1
	mov	w1, wzr
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	constrain_int
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	stur	w0, [x29, #-32]
	ldur	w0, [x29, #-36]
	ldr	x8, [x8, #8]
	subs	x2, x8, #1
	bl	constrain_int
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	stur	w0, [x29, #-36]
	ldur	w1, [x29, #-36]
	ldur	w2, [x29, #-32]
	ldur	w3, [x29, #-28]
	ldr	q0, [x8]
	add	x0, sp, #64
	str	q0, [sp, #64]
	ldr	x8, [x8, #16]
	str	x8, [sp, #80]
	bl	get_pixel
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stur	s0, [x29, #-40]
	ldur	w1, [x29, #-20]
	ldur	w2, [x29, #-24]
	ldur	w3, [x29, #-28]
	ldur	s0, [x29, #-40]
	ldr	q1, [x8]
	add	x0, sp, #32
	str	q1, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	bl	set_pixel
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	crop_image, .Lfunc_end0-crop_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym constrain_int
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel