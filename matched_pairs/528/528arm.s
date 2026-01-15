	.text
	.globl	load_data_augment               // -- Begin function load_data_augment
	.p2align	2
	.type	load_data_augment,@function
load_data_augment:                      // @load_data_augment
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w9, [x29, #16]
	ldr	w8, [x29, #24]
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	x3, [x29, #-24]
	stur	w4, [x29, #-28]
	stur	x5, [x29, #-40]
	stur	w6, [x29, #-44]
	str	w7, [sp, #48]
	str	w9, [sp, #44]
	str	s0, [sp, #40]
	str	s1, [sp, #36]
	str	s2, [sp, #32]
	str	s3, [sp, #28]
	str	s4, [sp, #24]
	str	w8, [sp, #20]
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
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	movi	v0.2d, #0000000000000000
	str	q0, [x9]
	str	q0, [x9, #16]
	str	xzr, [x9, #16]
	ldr	w8, [sp, #44]
	str	w8, [x9]
	ldr	w8, [sp, #44]
	str	w8, [x9, #4]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-44]
	ldr	w3, [sp, #48]
	ldr	w4, [sp, #44]
	ldr	s0, [sp, #40]
	ldr	s1, [sp, #36]
	ldr	s2, [sp, #32]
	ldr	s3, [sp, #28]
	ldr	s4, [sp, #24]
	ldr	w5, [sp, #20]
	bl	load_image_augment_paths
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x8, #12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	x2, [x29, #-24]
	ldur	w3, [x29, #-28]
	ldur	x4, [x29, #-40]
	bl	load_labels_paths
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x8, #8]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	bl	free
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	load_data_augment, .Lfunc_end0-load_data_augment
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym load_image_augment_paths
	.addrsig_sym load_labels_paths
	.addrsig_sym free