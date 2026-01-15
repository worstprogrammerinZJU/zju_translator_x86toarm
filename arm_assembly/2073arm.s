	.text
	.globl	correct_region_boxes            // -- Begin function correct_region_boxes
	.p2align	2
	.type	correct_region_boxes,@function
correct_region_boxes:                   // @correct_region_boxes
// %bb.0:
	sub	sp, sp, #64
	str	x0, [sp, #56]
	str	w1, [sp, #52]
	str	w2, [sp, #48]
	str	w3, [sp, #44]
	str	w4, [sp, #40]
	str	w5, [sp, #36]
	str	w6, [sp, #32]
	str	wzr, [sp, #24]
	str	wzr, [sp, #20]
	ldr	s0, [sp, #40]
	scvtf	s0, s0
	ldr	s1, [sp, #48]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldr	s1, [sp, #36]
	scvtf	s1, s1
	ldr	s2, [sp, #44]
	scvtf	s2, s2
	fdiv	s1, s1, s2
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #40]
	str	w8, [sp, #24]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	mul	w8, w8, w9
	ldr	w9, [sp, #48]
	sdiv	w8, w8, w9
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #36]
	str	w8, [sp, #20]
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #36]
	mul	w8, w8, w9
	ldr	w9, [sp, #44]
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	b	.LBB0_3
.LBB0_3:
	str	wzr, [sp, #28]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #52]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #28]
	ldr	q0, [x8, x9, lsl #4]
	str	q0, [sp]
	ldr	s1, [sp]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	scvtf	d1, w8
	fmov	d2, #2.00000000
	fdiv	d1, d1, d2
	ldr	s4, [sp, #40]
                                        // implicit-def: $d3
	fmov	s3, s4
	sshll	v3.2d, v3.2s, #0
                                        // kill: def $d3 killed $d3 killed $q3
	scvtf	d3, d3
	fdiv	d1, d1, d3
	fsub	d0, d0, d1
	ldr	s1, [sp, #24]
	scvtf	s1, s1
	ldr	s3, [sp, #40]
	scvtf	s3, s3
	fdiv	s1, s1, s3
	fcvt	d1, s1
	fdiv	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp]
	ldr	s1, [sp, #4]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	scvtf	d1, w8
	fdiv	d1, d1, d2
	ldr	s3, [sp, #36]
                                        // implicit-def: $d2
	fmov	s2, s3
	sshll	v2.2d, v2.2s, #0
                                        // kill: def $d2 killed $d2 killed $q2
	scvtf	d2, d2
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	ldr	s1, [sp, #20]
	scvtf	s1, s1
	ldr	s2, [sp, #36]
	scvtf	s2, s2
	fdiv	s1, s1, s2
	fcvt	d1, s1
	fdiv	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #4]
	ldr	s0, [sp, #40]
	scvtf	s0, s0
	ldr	s1, [sp, #24]
	scvtf	s1, s1
	fdiv	s1, s0, s1
	ldr	s0, [sp, #8]
	fmul	s0, s0, s1
	str	s0, [sp, #8]
	ldr	s0, [sp, #36]
	scvtf	s0, s0
	ldr	s1, [sp, #20]
	scvtf	s1, s1
	fdiv	s1, s0, s1
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	str	s0, [sp, #12]
	ldr	w8, [sp, #32]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w9, [sp, #48]
	ldr	w8, [sp]
	mul	w8, w8, w9
	str	w8, [sp]
	ldr	s0, [sp, #48]
	scvtf	s1, s0
	ldr	s0, [sp, #8]
	fmul	s0, s0, s1
	str	s0, [sp, #8]
	ldr	w9, [sp, #44]
	ldr	w8, [sp, #4]
	mul	w8, w8, w9
	str	w8, [sp, #4]
	ldr	s0, [sp, #44]
	scvtf	s1, s0
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	str	s0, [sp, #12]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #28]
	ldr	q0, [sp]
	str	q0, [x8, x9, lsl #4]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_4
.LBB0_9:
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	correct_region_boxes, .Lfunc_end0-correct_region_boxes
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig