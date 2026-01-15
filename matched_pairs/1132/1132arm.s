	.text
	.globl	rotate_crop_image               // -- Begin function rotate_crop_image
	.p2align	2
	.type	rotate_crop_image,@function
rotate_crop_image:                      // @rotate_crop_image
// %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #224
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-24]
	stur	s0, [x29, #-52]
	stur	s1, [x29, #-56]
	stur	w2, [x29, #-60]
	stur	w3, [x29, #-64]
	stur	s2, [x29, #-68]
	stur	s3, [x29, #-72]
	stur	s4, [x29, #-76]
	ldur	s1, [x29, #-32]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-92]
	ldur	s2, [x29, #-28]
                                        // implicit-def: $d0
	fmov	s0, s2
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-96]
	ldur	w0, [x29, #-60]
	ldur	w1, [x29, #-64]
	ldur	w2, [x29, #-24]
	bl	make_image
	str	x0, [sp, #112]
	str	x1, [sp, #120]
	ldr	x8, [sp, #112]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #120]
	stur	w8, [x29, #-8]
	stur	wzr, [x29, #-88]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-88]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-84]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-84]
	ldur	w9, [x29, #-64]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-80]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-80]
	ldur	w9, [x29, #-60]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	s0, [x29, #-52]
	bl	cos
	scvtf	d0, w0
	str	d0, [sp, #16]                   // 8-byte Folded Spill
	ldur	s1, [x29, #-80]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	s2, [x29, #-60]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmov	d2, #2.00000000
	str	d2, [sp, #24]                   // 8-byte Folded Spill
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	ldur	s1, [x29, #-56]
	fcvt	d1, s1
	fdiv	d0, d0, d1
	ldur	s1, [x29, #-76]
	fcvt	d1, s1
	ldur	s2, [x29, #-68]
	ldur	s3, [x29, #-56]
	fdiv	s2, s2, s3
	ldur	s3, [x29, #-76]
	fmul	s2, s2, s3
	fcvt	d2, s2
	fmadd	d0, d0, d1, d2
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	ldur	s0, [x29, #-52]
	bl	sin
	ldr	d1, [sp, #8]                    // 8-byte Folded Reload
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	ldr	d5, [sp, #24]                   // 8-byte Folded Reload
	scvtf	d2, w0
	ldur	s4, [x29, #-84]
                                        // implicit-def: $d3
	fmov	s3, s4
	sshll	v3.2d, v3.2s, #0
                                        // kill: def $d3 killed $d3 killed $q3
	scvtf	d3, d3
	ldur	s6, [x29, #-64]
                                        // implicit-def: $d4
	fmov	s4, s6
	sshll	v4.2d, v4.2s, #0
                                        // kill: def $d4 killed $d4 killed $q4
	scvtf	d4, d4
	fdiv	d4, d4, d5
	fsub	d3, d3, d4
	ldur	s4, [x29, #-56]
	fcvt	d4, s4
	fdiv	d3, d3, d4
	ldur	s4, [x29, #-72]
	ldur	s5, [x29, #-56]
	fdiv	s4, s4, s5
	fcvt	d4, s4
	fadd	d3, d3, d4
	fmul	d2, d2, d3
	fnmsub	d0, d0, d1, d2
	ldur	s1, [x29, #-92]
	fcvt	d1, s1
	fadd	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #108]
	ldur	s0, [x29, #-52]
	bl	sin
	ldr	d2, [sp, #24]                   // 8-byte Folded Reload
	scvtf	d0, w0
	str	d0, [sp, #40]                   // 8-byte Folded Spill
	ldur	s1, [x29, #-80]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	s3, [x29, #-60]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	ldur	s1, [x29, #-56]
	fcvt	d1, s1
	fdiv	d0, d0, d1
	ldur	s1, [x29, #-76]
	fcvt	d1, s1
	ldur	s2, [x29, #-68]
	ldur	s3, [x29, #-56]
	fdiv	s2, s2, s3
	ldur	s3, [x29, #-76]
	fmul	s2, s2, s3
	fcvt	d2, s2
	fmadd	d0, d0, d1, d2
	str	d0, [sp, #32]                   // 8-byte Folded Spill
	ldur	s0, [x29, #-52]
	bl	cos
	ldr	d5, [sp, #24]                   // 8-byte Folded Reload
	ldr	d1, [sp, #32]                   // 8-byte Folded Reload
	ldr	d0, [sp, #40]                   // 8-byte Folded Reload
	scvtf	d2, w0
	ldur	s4, [x29, #-84]
                                        // implicit-def: $d3
	fmov	s3, s4
	sshll	v3.2d, v3.2s, #0
                                        // kill: def $d3 killed $d3 killed $q3
	scvtf	d3, d3
	ldur	s6, [x29, #-64]
                                        // implicit-def: $d4
	fmov	s4, s6
	sshll	v4.2d, v4.2s, #0
                                        // kill: def $d4 killed $d4 killed $q4
	scvtf	d4, d4
	fdiv	d4, d4, d5
	fsub	d3, d3, d4
	ldur	s4, [x29, #-56]
	fcvt	d4, s4
	fdiv	d3, d3, d4
	ldur	s4, [x29, #-72]
	ldur	s5, [x29, #-56]
	fdiv	s4, s4, s5
	fcvt	d4, s4
	fadd	d3, d3, d4
	fmul	d2, d2, d3
	fmadd	d0, d0, d1, d2
	ldur	s1, [x29, #-96]
	fcvt	d1, s1
	fadd	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #104]
	ldr	s0, [sp, #108]
	ldr	s1, [sp, #104]
	ldur	w2, [x29, #-88]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #80]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #88]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	bl	bilinear_interpolate
	str	s0, [sp, #100]
	ldur	w2, [x29, #-80]
	ldur	w3, [x29, #-84]
	ldur	w4, [x29, #-88]
	ldr	s0, [sp, #100]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #64]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #72]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	bl	set_pixel
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-80]
	add	w8, w8, #1
	stur	w8, [x29, #-80]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-88]
	add	w8, w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_1
.LBB0_12:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #56]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	ldp	x29, x30, [sp, #224]            // 16-byte Folded Reload
	add	sp, sp, #240
	ret
.Lfunc_end0:
	.size	rotate_crop_image, .Lfunc_end0-rotate_crop_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym cos
	.addrsig_sym sin
	.addrsig_sym bilinear_interpolate
	.addrsig_sym set_pixel