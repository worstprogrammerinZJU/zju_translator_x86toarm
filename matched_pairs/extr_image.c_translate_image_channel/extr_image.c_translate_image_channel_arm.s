	.text
	.globl	translate_image_channel         // -- Begin function translate_image_channel
	.p2align	2
	.type	translate_image_channel,@function
translate_image_channel:                // @translate_image_channel
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	s0, [sp, #16]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w1, [sp, #12]
	ldr	w2, [sp, #8]
	ldur	w3, [x29, #-12]
	ldur	x0, [x29, #-8]
	bl	get_pixel
	str	s0, [sp, #4]
	ldr	s0, [sp, #4]
	ldr	s1, [sp, #16]
	fadd	s0, s0, s1
	str	s0, [sp, #4]
	ldr	w1, [sp, #12]
	ldr	w2, [sp, #8]
	ldur	w3, [x29, #-12]
	ldr	s0, [sp, #4]
	ldur	x0, [x29, #-8]
	bl	set_pixel
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	translate_image_channel, .Lfunc_end0-translate_image_channel
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel