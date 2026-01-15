	.text
	.globl	ghost_image                     // -- Begin function ghost_image
	.p2align	2
	.type	ghost_image,@function
ghost_image:                            // @ghost_image
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-8]
	stur	x2, [x29, #-64]
	stur	x3, [x29, #-56]
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-56]
	stur	w8, [x29, #-40]
	stur	w4, [x29, #-68]
	stur	w5, [x29, #-72]
	ldur	w9, [x29, #-16]
	mov	w8, wzr
	subs	w9, w8, w9
	scvtf	d0, w9
	fmov	d3, #2.00000000
	fdiv	d0, d0, d3
	fmov	d2, #0.50000000
	fadd	d0, d0, d2
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	scvtf	d1, w8
	fdiv	d1, d1, d3
	fadd	d1, d1, d2
	fmul	d0, d0, d1
	fcvtzs	w0, d0
	bl	sqrt
	str	s0, [sp, #88]
	stur	wzr, [x29, #-84]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-84]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-80]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-80]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	stur	wzr, [x29, #-76]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	s1, [x29, #-76]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	s2, [x29, #-16]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmov	d6, #2.00000000
	fdiv	d1, d1, d6
	fsub	d0, d0, d1
	fmov	d4, #0.50000000
	fadd	d0, d0, d4
	ldur	s2, [x29, #-76]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	ldur	s3, [x29, #-16]
                                        // implicit-def: $d2
	fmov	s2, s3
	sshll	v2.2d, v2.2s, #0
                                        // kill: def $d2 killed $d2 killed $q2
	scvtf	d2, d2
	fdiv	d2, d2, d6
	fsub	d1, d1, d2
	fadd	d1, d1, d4
	ldur	s3, [x29, #-80]
                                        // implicit-def: $d2
	fmov	s2, s3
	sshll	v2.2d, v2.2s, #0
                                        // kill: def $d2 killed $d2 killed $q2
	scvtf	d2, d2
	ldur	s5, [x29, #-8]
                                        // implicit-def: $d3
	fmov	s3, s5
	sshll	v3.2d, v3.2s, #0
                                        // kill: def $d3 killed $d3 killed $q3
	scvtf	d3, d3
	fdiv	d3, d3, d6
	fsub	d2, d2, d3
	fadd	d2, d2, d4
	ldur	s5, [x29, #-80]
                                        // implicit-def: $d3
	fmov	s3, s5
	sshll	v3.2d, v3.2s, #0
                                        // kill: def $d3 killed $d3 killed $q3
	scvtf	d3, d3
	ldur	s7, [x29, #-8]
                                        // implicit-def: $d5
	fmov	s5, s7
	sshll	v5.2d, v5.2s, #0
                                        // kill: def $d5 killed $d5 killed $q5
	scvtf	d5, d5
	fdiv	d5, d5, d6
	fsub	d3, d3, d5
	fadd	d3, d3, d4
	fmul	d2, d2, d3
	fmadd	d0, d0, d1, d2
	fcvtzs	w0, d0
	bl	sqrt
	str	s0, [sp, #84]
	ldr	s0, [sp, #84]
	ldr	s1, [sp, #88]
	fdiv	s1, s0, s1
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	str	s0, [sp, #80]
	ldr	s0, [sp, #80]
	fcmp	s0, #0.0
	b.pl	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	movi	d0, #0000000000000000
	str	s0, [sp, #80]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w2, [x29, #-76]
	ldur	w3, [x29, #-80]
	ldur	w4, [x29, #-84]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #64]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	get_pixel
	str	s0, [sp, #76]
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-76]
	add	w2, w8, w9
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-80]
	add	w3, w8, w9
	ldur	w4, [x29, #-84]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #32]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	get_pixel
	str	s0, [sp, #52]
	ldr	s0, [sp, #80]
	ldr	s1, [sp, #76]
	ldr	s3, [sp, #80]
	fmov	s2, #1.00000000
	fsub	s2, s2, s3
	ldr	s3, [sp, #52]
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #28]
	ldur	w8, [x29, #-68]
	ldur	w9, [x29, #-76]
	add	w2, w8, w9
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-80]
	add	w3, w8, w9
	ldur	w4, [x29, #-84]
	ldr	s0, [sp, #28]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	set_pixel
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=3
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_5
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-80]
	add	w8, w8, #1
	stur	w8, [x29, #-80]
	b	.LBB0_3
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_1
.LBB0_14:
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	ghost_image, .Lfunc_end0-ghost_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel