	.text
	.globl	fill_truth_mask                 // -- Begin function fill_truth_mask
	.p2align	2
	.type	fill_truth_mask,@function
fill_truth_mask:                        // @fill_truth_mask
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #9, lsl #12             // =36864
	sub	sp, sp, #256
	add	x8, sp, #8, lsl #12             // =32768
	add	x8, x8, #200
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	str	x6, [sp, #24]                   // 8-byte Folded Spill
	ldr	w10, [x29, #32]
	ldr	w9, [x29, #40]
	str	x0, [x8, #4144]
	str	w1, [x8, #4140]
	str	x2, [x8, #4128]
	str	w3, [x8, #4124]
	str	w4, [x8, #4120]
	str	w5, [x8, #4116]
	str	w7, [x8, #4112]
	str	w10, [x8, #4108]
	str	w9, [x8, #4104]
	ldr	x0, [x8, #4144]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	str	x2, [sp, #32]                   // 8-byte Folded Spill
	add	x3, sp, #8, lsl #12             // =32768
	add	x3, x3, #208
	str	x3, [sp, #48]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #32]                   // 8-byte Folded Reload
	ldr	x3, [sp, #48]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	find_replace
	ldr	x3, [sp, #48]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	str	x2, [sp, #40]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #40]                   // 8-byte Folded Reload
	ldr	x3, [sp, #48]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	find_replace
	ldr	x2, [sp, #40]                   // 8-byte Folded Reload
	ldr	x3, [sp, #48]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	find_replace
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	fopen
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	add	x0, sp, #8, lsl #12             // =32768
	add	x0, x0, #208
	bl	file_error
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	wzr, [sp, #172]
	ldr	w0, [x8, #4120]
	ldr	w1, [x8, #4116]
	mov	w2, #1
	bl	make_image
	str	x0, [sp, #152]
	str	x1, [sp, #160]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_10 Depth 2
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	add	x2, sp, #176
	add	x3, sp, #180
	bl	fscanf
	mov	w8, #0
	subs	w9, w0, #2
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	w8, [sp, #172]
	ldr	w9, [x9, #4140]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	add	x1, sp, #148
	mov	w2, wzr
	str	wzr, [sp, #148]
	add	x0, sp, #180
	bl	read_intlist
	str	x0, [sp, #136]
	ldr	x2, [sp, #136]
	ldr	w3, [sp, #148]
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #160]
	bl	load_rle
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w2, [x8, #24]
	ldr	w3, [x8, #20]
	ldr	w4, [x8, #16]
	ldr	w5, [x8, #12]
	ldr	w6, [x8, #8]
	ldr	w7, [x8, #4]
	ldr	w8, [x8]
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #160]
	mov	x9, sp
	str	w8, [x9]
	bl	rotate_crop_image
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [sp, #120]
	str	x1, [sp, #128]
	ldr	w8, [x8, #4112]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #120]
	ldr	x1, [sp, #128]
	bl	flip_image
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #120]
	ldr	x1, [sp, #128]
	bl	bound_image
	str	x0, [sp, #104]
	str	x1, [sp, #112]
	ldr	w8, [sp, #104]
	subs	w8, w8, #0
	b.le	.LBB0_14
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w2, [sp, #108]
	ldr	w3, [sp, #112]
	ldr	w4, [sp, #104]
	ldr	w5, [sp, #116]
	ldr	x0, [sp, #120]
	ldr	x1, [sp, #128]
	bl	crop_image
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	str	x0, [sp, #88]
	str	x1, [sp, #96]
	ldr	w2, [x8, #4108]
	ldr	w3, [x8, #4104]
	ldr	x0, [sp, #88]
	ldr	x1, [sp, #96]
	bl	resize_image
	ldr	x11, [sp, #56]                  // 8-byte Folded Reload
	str	x0, [sp, #72]
	str	x1, [sp, #80]
	ldr	s1, [sp, #108]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	s2, [sp, #104]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmov	d2, #2.00000000
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	ldr	s3, [sp, #120]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	fcvt	s0, d0
	ldr	x8, [x11, #4128]
	ldr	w9, [sp, #172]
	ldr	w10, [x11, #4108]
	ldr	w12, [x11, #4104]
	mul	w10, w10, w12
	add	w10, w10, #4
	add	w10, w10, #1
	mul	w9, w9, w10
	add	w9, w9, #0
	str	s0, [x8, w9, sxtw #2]
	ldr	s1, [sp, #112]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	s3, [sp, #116]
                                        // implicit-def: $d1
	fmov	s1, s3
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	ldr	s2, [sp, #124]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	fcvt	s0, d0
	ldr	x8, [x11, #4128]
	ldr	w9, [sp, #172]
	ldr	w10, [x11, #4108]
	ldr	w12, [x11, #4104]
	mul	w10, w10, w12
	add	w10, w10, #4
	add	w10, w10, #1
	mul	w9, w9, w10
	add	w9, w9, #1
	str	s0, [x8, w9, sxtw #2]
	ldr	w8, [sp, #104]
	ldr	w9, [sp, #120]
	sdiv	w8, w8, w9
	scvtf	s0, w8
	ldr	x8, [x11, #4128]
	ldr	w9, [sp, #172]
	ldr	w10, [x11, #4108]
	ldr	w12, [x11, #4104]
	mul	w10, w10, w12
	add	w10, w10, #4
	add	w10, w10, #1
	mul	w9, w9, w10
	add	w9, w9, #2
	str	s0, [x8, w9, sxtw #2]
	ldr	w8, [sp, #116]
	ldr	w9, [sp, #124]
	sdiv	w8, w8, w9
	scvtf	s0, w8
	ldr	x8, [x11, #4128]
	ldr	w9, [sp, #172]
	ldr	w10, [x11, #4108]
	ldr	w11, [x11, #4104]
	mul	w10, w10, w11
	add	w10, w10, #4
	add	w10, w10, #1
	mul	w9, w9, w10
	add	w9, w9, #3
	str	s0, [x8, w9, sxtw #2]
	str	wzr, [sp, #68]
	b	.LBB0_10
.LBB0_10:                               //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #56]                  // 8-byte Folded Reload
	ldr	w8, [sp, #68]
	ldr	w9, [x10, #4108]
	ldr	w10, [x10, #4104]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x12, [sp, #56]                  // 8-byte Folded Reload
	ldr	x8, [sp, #80]
	ldrsw	x9, [sp, #68]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [x12, #4128]
	ldr	w10, [sp, #172]
	ldr	w11, [x12, #4108]
	ldr	w12, [x12, #4104]
	mul	w11, w11, w12
	add	w11, w11, #4
	add	w11, w11, #1
	mul	w10, w10, w11
	add	w10, w10, #4
	ldr	w11, [sp, #68]
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	b	.LBB0_10
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x11, [sp, #56]                  // 8-byte Folded Reload
	ldr	s0, [sp, #176]
	scvtf	s0, s0
	ldr	x8, [x11, #4128]
	ldr	w9, [sp, #172]
	ldr	w10, [x11, #4108]
	ldr	w12, [x11, #4104]
	mul	w10, w10, w12
	add	w10, w10, #4
	add	w10, w10, #1
	mul	w9, w9, w10
	add	w9, w9, #4
	ldr	w10, [x11, #4108]
	ldr	w11, [x11, #4104]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	ldr	x0, [sp, #88]
	ldr	x1, [sp, #96]
	bl	free_image
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #80]
	bl	free_image
	ldr	w8, [sp, #172]
	add	w8, w8, #1
	str	w8, [sp, #172]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #120]
	ldr	x1, [sp, #128]
	bl	free_image
	ldr	x0, [sp, #136]
	bl	free
	b	.LBB0_3
.LBB0_15:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	fclose
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #160]
	bl	free_image
	add	sp, sp, #9, lsl #12             // =36864
	add	sp, sp, #256
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	fill_truth_mask, .Lfunc_end0-fill_truth_mask
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mask"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"JPEGImages"
	.size	.L.str.2, 11
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	".jpg"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	".txt"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	".JPG"
	.size	.L.str.5, 5
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	".JPEG"
	.size	.L.str.6, 6
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"r"
	.size	.L.str.7, 2
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"%d %s"
	.size	.L.str.8, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym make_image
	.addrsig_sym fscanf
	.addrsig_sym read_intlist
	.addrsig_sym load_rle
	.addrsig_sym rotate_crop_image
	.addrsig_sym flip_image
	.addrsig_sym bound_image
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym free_image
	.addrsig_sym free
	.addrsig_sym fclose