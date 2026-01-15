	.text
	.globl	load_data_captcha               // -- Begin function load_data_captcha
	.p2align	2
	.type	load_data_captcha,@function
load_data_captcha:                      // @load_data_captcha
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
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
	movi	v0.2d, #0000000000000000
	str	q0, [x8]
	str	q0, [x8, #16]
	str	xzr, [x8, #16]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-24]
	ldur	w3, [x29, #-28]
	bl	load_image_paths
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x8, #8]
	ldur	w0, [x29, #-12]
	ldur	w8, [x29, #-20]
	adrp	x9, NUMCHARS
	ldr	w9, [x9, :lo12:NUMCHARS]
	mul	w1, w8, w9
	bl	make_matrix
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [x9]
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #20]
	ldr	x0, [x9, x10, lsl #3]
	ldur	w1, [x29, #-20]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #20]
	ldr	w2, [x8, x9, lsl #2]
	bl	fill_truth_captcha
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_6:
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	bl	free
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	load_data_captcha, .Lfunc_end0-load_data_captcha
                                        // -- End function
	.type	NUMCHARS,@object                // @NUMCHARS
	.bss
	.globl	NUMCHARS
	.p2align	2
NUMCHARS:
	.word	0                               // 0x0
	.size	NUMCHARS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym load_image_paths
	.addrsig_sym make_matrix
	.addrsig_sym fill_truth_captcha
	.addrsig_sym free
	.addrsig_sym NUMCHARS