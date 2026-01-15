	.text
	.globl	bbox_fight                      // -- Begin function bbox_fight
	.p2align	2
	.type	bbox_fight,@function
bbox_fight:                             // @bbox_fight
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-8]
	stur	x2, [x29, #-40]
	stur	x3, [x29, #-48]
	stur	w4, [x29, #-52]
	stur	w5, [x29, #-56]
	ldur	x8, [x29, #-40]
	ldr	w0, [x8]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-12]
	bl	load_image_color
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x8, [x29, #-48]
	ldr	w0, [x8]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-12]
	bl	load_image_color
	str	x0, [sp, #40]
	str	x1, [sp, #48]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #68]
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #60]
	mul	w8, w8, w9
	ldr	w9, [sp, #64]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #56]
	ldr	w10, [sp, #60]
	mul	w9, w9, w10
	ldr	w10, [sp, #64]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldr	w1, [sp, #52]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #44]
	mul	w8, w8, w9
	ldr	w9, [sp, #48]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x2, [sp, #32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	network_predict
	str	x0, [sp, #24]
	adrp	x9, total_compares
	ldr	w8, [x9, :lo12:total_compares]
	add	w8, w8, #1
	str	w8, [x9, :lo12:total_compares]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-56]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-56]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #4]
	lsl	w9, w9, #1
	ldr	s0, [x8, w9, sxtw #2]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #4]
	lsl	w9, w9, #1
	add	w9, w9, #1
	ldr	s1, [x8, w9, sxtw #2]
	fcmp	s0, s1
	cset	w8, gt
	and	w8, w8, #0x1
	str	w8, [sp]
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-48]
	ldr	w2, [sp, #4]
	ldr	w3, [sp]
	bl	bbox_update
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_7:
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	free_image
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #48]
	bl	free_image
	ldr	x0, [sp, #32]
	bl	free
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	bbox_fight, .Lfunc_end0-bbox_fight
                                        // -- End function
	.type	total_compares,@object          // @total_compares
	.bss
	.globl	total_compares
	.p2align	2
total_compares:
	.word	0                               // 0x0
	.size	total_compares, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image_color
	.addrsig_sym calloc
	.addrsig_sym memcpy
	.addrsig_sym network_predict
	.addrsig_sym bbox_update
	.addrsig_sym free_image
	.addrsig_sym free
	.addrsig_sym total_compares