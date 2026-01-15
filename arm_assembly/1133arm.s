	.text
	.globl	rotate_image                    // -- Begin function rotate_image
	.p2align	2
	.type	rotate_image,@function
rotate_image:                           // @rotate_image
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-24]
	stur	s0, [x29, #-52]
	ldur	s1, [x29, #-32]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-68]
	ldur	s2, [x29, #-28]
                                        // implicit-def: $d0
	fmov	s0, s2
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-72]
	ldur	w0, [x29, #-32]
	ldur	w1, [x29, #-28]
	ldur	w2, [x29, #-24]
	bl	make_image
	str	x0, [sp, #88]
	str	x1, [sp, #96]
	ldr	x8, [sp, #88]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #96]
	stur	w8, [x29, #-8]
	stur	wzr, [x29, #-64]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-64]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-60]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-56]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-56]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	s0, [x29, #-52]
	bl	cos
	scvtf	s0, w0
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	ldur	s0, [x29, #-56]
	scvtf	s0, s0
	ldur	s1, [x29, #-68]
	fsub	s0, s0, s1
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	ldur	s0, [x29, #-52]
	bl	sin
	ldr	s1, [sp, #8]                    // 4-byte Folded Reload
	ldr	s0, [sp, #12]                   // 4-byte Folded Reload
	scvtf	s2, w0
	ldur	s3, [x29, #-60]
	scvtf	s3, s3
	ldur	s4, [x29, #-72]
	fsub	s3, s3, s4
	fmul	s2, s2, s3
	fnmsub	s0, s0, s1, s2
	ldur	s1, [x29, #-68]
	fadd	s0, s0, s1
	str	s0, [sp, #84]
	ldur	s0, [x29, #-52]
	bl	sin
	scvtf	s0, w0
	str	s0, [sp, #20]                   // 4-byte Folded Spill
	ldur	s0, [x29, #-56]
	scvtf	s0, s0
	ldur	s1, [x29, #-68]
	fsub	s0, s0, s1
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	ldur	s0, [x29, #-52]
	bl	cos
	ldr	s1, [sp, #16]                   // 4-byte Folded Reload
	ldr	s0, [sp, #20]                   // 4-byte Folded Reload
	scvtf	s2, w0
	ldur	s3, [x29, #-60]
	scvtf	s3, s3
	ldur	s4, [x29, #-72]
	fsub	s3, s3, s4
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	ldur	s1, [x29, #-72]
	fadd	s0, s0, s1
	str	s0, [sp, #80]
	ldr	s0, [sp, #84]
	ldr	s1, [sp, #80]
	ldur	w2, [x29, #-64]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #56]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #64]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	bilinear_interpolate
	str	s0, [sp, #76]
	ldur	w2, [x29, #-56]
	ldur	w3, [x29, #-60]
	ldur	w4, [x29, #-64]
	ldr	s0, [sp, #76]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #48]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	set_pixel
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_1
.LBB0_12:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	rotate_image, .Lfunc_end0-rotate_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym cos
	.addrsig_sym sin
	.addrsig_sym bilinear_interpolate
	.addrsig_sym set_pixel