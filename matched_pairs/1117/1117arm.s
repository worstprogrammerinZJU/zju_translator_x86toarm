	.text
	.globl	mask_to_rgb                     // -- Begin function mask_to_rgb
	.p2align	2
	.type	mask_to_rgb,@function
mask_to_rgb:                            // @mask_to_rgb
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	x9, x0
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldr	w10, [x9]
	stur	w10, [x29, #-4]
	ldr	w0, [x9, #4]
	ldr	w1, [x9, #8]
	mov	w2, #3
	bl	make_image
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	mov	w9, #57921
	movk	w9, #1, lsl #16
	mul	w8, w8, w9
	ldur	w10, [x29, #-4]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-16]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-4]
	mov	w0, #2
	bl	get_color
	stur	s0, [x29, #-20]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-4]
	mov	w0, #1
	bl	get_color
	str	s0, [sp, #24]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-4]
	mov	w0, wzr
	bl	get_color
	str	s0, [sp, #20]
	stur	wzr, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x10, #4]
	ldr	w10, [x10, #8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x11, [sp]                       // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldur	w10, [x29, #-12]
	ldr	w12, [x11, #8]
	mul	w10, w10, w12
	ldr	w12, [x11, #4]
	mul	w10, w10, w12
	ldur	w12, [x29, #-8]
	add	w10, w10, w12
	ldr	s0, [x9, w10, sxtw #2]
	ldur	s1, [x29, #-20]
	ldr	x9, [x11, #16]
	ldur	w10, [x29, #-8]
	ldr	w13, [x11, #4]
	mov	w12, wzr
	mul	w12, w12, w13
	ldr	w13, [x11, #8]
	mul	w12, w12, w13
	add	w10, w10, w12
	add	x9, x9, w10, sxtw #2
	ldr	s2, [x9]
	fmadd	s0, s0, s1, s2
	str	s0, [x9]
	ldr	x9, [x8, #16]
	ldur	w10, [x29, #-12]
	ldr	w12, [x11, #8]
	mul	w10, w10, w12
	ldr	w12, [x11, #4]
	mul	w10, w10, w12
	ldur	w12, [x29, #-8]
	add	w10, w10, w12
	ldr	s0, [x9, w10, sxtw #2]
	ldr	s1, [sp, #24]
	ldr	x9, [x11, #16]
	ldur	w10, [x29, #-8]
	ldr	w13, [x11, #4]
	mov	w12, #1
	mul	w12, w12, w13
	ldr	w13, [x11, #8]
	mul	w12, w12, w13
	add	w10, w10, w12
	add	x9, x9, w10, sxtw #2
	ldr	s2, [x9]
	fmadd	s0, s0, s1, s2
	str	s0, [x9]
	ldr	x8, [x8, #16]
	ldur	w9, [x29, #-12]
	ldr	w10, [x11, #8]
	mul	w9, w9, w10
	ldr	w10, [x11, #4]
	mul	w9, w9, w10
	ldur	w10, [x29, #-8]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldr	s1, [sp, #20]
	ldr	x8, [x11, #16]
	ldur	w9, [x29, #-8]
	ldr	w12, [x11, #4]
	mov	w10, #2
	mul	w10, w10, w12
	ldr	w11, [x11, #8]
	mul	w10, w10, w11
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s2, [x8]
	fmadd	s0, s0, s1, s2
	str	s0, [x8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_8:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	mask_to_rgb, .Lfunc_end0-mask_to_rgb
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_color