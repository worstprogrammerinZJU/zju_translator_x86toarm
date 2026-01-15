	.text
	.p2align	2                               // -- Begin function get_pixel_extend
	.type	get_pixel_extend,@function
get_pixel_extend:                       // @get_pixel_extend
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #40]
	stur	w8, [x29, #-8]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	str	w4, [sp, #20]
	ldr	w8, [sp, #28]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #24]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	movi	d0, #0000000000000000
	stur	s0, [x29, #-4]
	b	.LBB0_9
.LBB0_5:
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.lt	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	movi	d0, #0000000000000000
	stur	s0, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	ldr	w2, [sp, #28]
	ldr	w3, [sp, #24]
	ldr	w4, [sp, #20]
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	get_pixel
	stur	s0, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	get_pixel_extend, .Lfunc_end0-get_pixel_extend
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel_extend
	.addrsig_sym get_pixel