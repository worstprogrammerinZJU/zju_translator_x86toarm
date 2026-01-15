	.text
	.globl	load_data_captcha_encode        // -- Begin function load_data_captcha_encode
	.p2align	2
	.type	load_data_captcha_encode,@function
load_data_captcha_encode:               // @load_data_captcha_encode
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	str	w4, [sp, #24]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	bl	get_random_paths
	stur	x0, [x29, #-8]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	str	xzr, [x8, #8]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-20]
	ldr	w3, [sp, #24]
	bl	load_image_paths
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	str	w8, [x9]
	mov	w8, #17100
	str	w8, [x9]
	ldr	w8, [x9]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	bl	free
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	load_data_captcha_encode, .Lfunc_end0-load_data_captcha_encode
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym load_image_paths
	.addrsig_sym free