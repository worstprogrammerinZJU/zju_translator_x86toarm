	.text
	.globl	load_data_tag                   // -- Begin function load_data_tag
	.p2align	2
	.type	load_data_tag,@function
load_data_tag:                          // @load_data_tag
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
	str	w6, [sp, #32]
	str	s0, [sp, #28]
	str	s1, [sp, #24]
	str	s2, [sp, #20]
	str	s3, [sp, #16]
	str	s4, [sp, #12]
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
	ldr	x8, [sp]                        // 8-byte Folded Reload
	movi	v0.2d, #0000000000000000
	str	q0, [x8]
	str	q0, [x8, #16]
	ldr	w9, [sp, #32]
	str	w9, [x8]
	ldr	w9, [sp, #32]
	str	w9, [x8, #4]
	str	xzr, [x8, #16]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-24]
	ldur	w3, [x29, #-28]
	ldr	w4, [sp, #32]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #24]
	ldr	s2, [sp, #20]
	ldr	s3, [sp, #16]
	ldr	s4, [sp, #12]
	mov	w5, wzr
	bl	load_image_augment_paths
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [x8, #12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-20]
	bl	load_tags_paths
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [x8, #8]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	bl	free
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	load_data_tag, .Lfunc_end0-load_data_tag
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_paths
	.addrsig_sym load_image_augment_paths
	.addrsig_sym load_tags_paths
	.addrsig_sym free