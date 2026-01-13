	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function draw_detections
.LCPI0_0:
	.xword	0x3f9eb851eb851eb8              // double 0.029999999999999999
.LCPI0_1:
	.xword	0x3f789374bc6a7efa              // double 0.0060000000000000001
	.text
	.globl	draw_detections
	.p2align	2
	.type	draw_detections,@function
draw_detections:                        // @draw_detections
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #208
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	stur	s0, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	x5, [x29, #-48]
	stur	w6, [x29, #-52]
	stur	wzr, [x29, #-56]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-56]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_27
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	add	x0, sp, #148
	mov	w1, wzr
	mov	x2, #4096
	bl	memset
	mov	w8, #-1
	str	w8, [sp, #144]
	stur	wzr, [x29, #-60]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-56]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	ldursw	x9, [x29, #-60]
	ldr	s0, [x8, x9, lsl #2]
	ldur	s1, [x29, #-32]
	fcmp	s0, s1
	b.le	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #144]
	subs	w8, w8, #0
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-60]
	ldr	x1, [x8, x9, lsl #3]
	add	x0, sp, #148
	bl	strcat
	ldur	w8, [x29, #-60]
	str	w8, [sp, #144]
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	add	x0, sp, #148
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcat
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-60]
	ldr	x1, [x8, x9, lsl #3]
	bl	strcat
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-60]
	ldr	x1, [x8, x9, lsl #3]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-56]
	lsl	x9, x9, #5
	ldr	x8, [x8, x9]
	ldursw	x9, [x29, #-60]
	ldr	s0, [x8, x9, lsl #2]
	mov	w8, #1120403456
	fmov	s1, w8
	fmul	s0, s0, s1
	fcvtzs	w2, s0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_3
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #144]
	tbnz	w8, #31, .LBB0_25
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	d0, [x29, #-16]
	adrp	x8, .LCPI0_1
	ldr	d1, [x8, :lo12:.LCPI0_1]
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #140]
	ldr	w8, [sp, #144]
	mov	w9, #57921
	movk	w9, #1, lsl #16
	mul	w8, w8, w9
	ldur	w10, [x29, #-52]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #136]
	ldr	w1, [sp, #136]
	ldur	w2, [x29, #-52]
	mov	w0, #2
	bl	get_color
	str	s0, [sp, #132]
	ldr	w1, [sp, #136]
	ldur	w2, [x29, #-52]
	mov	w0, #1
	bl	get_color
	str	s0, [sp, #128]
	ldr	w1, [sp, #136]
	ldur	w2, [x29, #-52]
	mov	w0, wzr
	bl	get_color
	str	s0, [sp, #124]
	ldr	w8, [sp, #132]
	str	w8, [sp, #112]
	ldr	w8, [sp, #128]
	str	w8, [sp, #116]
	ldr	w8, [sp, #124]
	str	w8, [sp, #120]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-56]
	add	x8, x8, x9, lsl #5
	ldr	q0, [x8, #16]
	str	q0, [sp, #96]
	ldr	s1, [sp, #96]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	s2, [sp, #100]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmov	d2, #2.00000000
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	ldur	s3, [x29, #-8]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #92]
	ldr	s1, [sp, #96]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	s3, [sp, #100]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	ldur	s3, [x29, #-8]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #88]
	ldr	s1, [sp, #104]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	s3, [sp, #108]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	ldur	d1, [x29, #-16]
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #84]
	ldr	s1, [sp, #104]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	s3, [sp, #108]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	ldur	d1, [x29, #-16]
	fmul	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #80]
	ldr	w8, [sp, #92]
	subs	w8, w8, #0
	b.ge	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #92]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #88]
	ldur	w9, [x29, #-8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.le	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	str	w8, [sp, #88]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #84]
	subs	w8, w8, #0
	b.ge	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #84]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	s1, [sp, #80]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	d1, [x29, #-16]
	fmov	d2, #1.00000000
	fsub	d1, d1, d2
	fcmp	d0, d1
	b.le	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	d0, [x29, #-16]
	fmov	d1, #1.00000000
	fsub	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #80]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w2, [sp, #92]
	ldr	w3, [sp, #84]
	ldr	w4, [sp, #88]
	ldr	w5, [sp, #80]
	ldr	w6, [sp, #140]
	ldr	s0, [sp, #132]
	ldr	s1, [sp, #128]
	ldr	s2, [sp, #124]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	bl	draw_box_width
	ldur	x8, [x29, #-48]
	cbz	x8, .LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-48]
	ldur	d0, [x29, #-16]
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	add	x1, sp, #148
	bl	get_label
	str	x0, [sp, #64]
	str	x1, [sp, #72]
	ldr	w8, [sp, #84]
	ldr	w9, [sp, #140]
	add	w2, w8, w9
	ldr	w3, [sp, #92]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldr	x4, [sp, #64]
	ldr	x5, [sp, #72]
	add	x6, sp, #112
	bl	draw_label
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	bl	free_image
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-56]
	add	x8, x8, x9, lsl #5
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-56]
	add	x8, x8, x9, lsl #5
	ldr	x3, [x8, #8]
	mov	w1, #14
	mov	w0, w1
	mov	w2, #1
	bl	float_to_image
	str	x0, [sp, #48]
	str	x1, [sp, #56]
	ldr	w8, [sp, #100]
	ldur	w9, [x29, #-8]
	mul	w2, w8, w9
	ldr	s1, [sp, #108]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldur	d1, [x29, #-16]
	fmul	d0, d0, d1
	fcvtzs	w3, d0
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	resize_image
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	fmov	d0, #0.50000000
	bl	threshold_image
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	w4, [sp, #92]
	ldr	w5, [sp, #84]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-16]
	ldur	x3, [x29, #-8]
	bl	embed_image
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	free_image
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	free_image
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	free_image
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_1
.LBB0_27:
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #208
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	draw_detections, .Lfunc_end0-draw_detections
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	", "
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s: %.0f%%\n"
	.size	.L.str.1, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcat
	.addrsig_sym printf
	.addrsig_sym get_color
	.addrsig_sym draw_box_width
	.addrsig_sym get_label
	.addrsig_sym draw_label
	.addrsig_sym free_image
	.addrsig_sym float_to_image
	.addrsig_sym resize_image
	.addrsig_sym threshold_image
	.addrsig_sym embed_image