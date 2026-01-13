	.text
	.globl	bbox_comparator                 // -- Begin function bbox_comparator
	.p2align	2
	.type	bbox_comparator,@function
bbox_comparator:                        // @bbox_comparator
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	adrp	x9, total_compares
	ldr	w8, [x9, :lo12:total_compares]
	add	w8, w8, #1
	str	w8, [x9, :lo12:total_compares]
	ldur	x8, [x29, #-16]
	ldr	q0, [x8]
	stur	q0, [x29, #-48]
	ldr	w8, [x8, #16]
	stur	w8, [x29, #-32]
	ldur	x8, [x29, #-24]
	ldr	q0, [x8]
	stur	q0, [x29, #-80]
	ldr	w8, [x8, #16]
	stur	w8, [x29, #-64]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #80]
	ldur	w8, [x29, #-32]
	str	w8, [sp, #88]
	ldur	w8, [x29, #-48]
	str	w8, [sp, #76]
	ldur	w0, [x29, #-44]
	ldr	w1, [sp, #80]
	ldr	w2, [sp, #84]
	bl	load_image_color
	stur	x0, [sp, #60]
	stur	x1, [sp, #68]
	ldur	w0, [x29, #-76]
	ldr	w1, [sp, #80]
	ldr	w2, [sp, #84]
	bl	load_image_color
	stur	x0, [sp, #44]
	stur	x1, [sp, #52]
	ldr	w8, [sp, #80]
	ldr	w9, [sp, #84]
	mul	w8, w8, w9
	ldr	w9, [sp, #88]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	w1, [sp, #72]
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #64]
	mul	w8, w8, w9
	ldr	w9, [sp, #68]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #60]
	ldr	w10, [sp, #64]
	mul	w9, w9, w10
	ldr	w10, [sp, #68]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldr	w1, [sp, #56]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #48]
	mul	w8, w8, w9
	ldr	w9, [sp, #52]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x2, [sp, #32]
	ldr	x8, [sp, #80]
	str	x8, [sp, #8]
	ldr	w8, [sp, #88]
	str	w8, [sp, #16]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	bl	network_predict
	str	x0, [sp, #24]
	ldur	x0, [sp, #60]
	ldur	x1, [sp, #68]
	bl	free_image
	ldur	x0, [sp, #44]
	ldur	x1, [sp, #52]
	bl	free_image
	ldr	x0, [sp, #32]
	bl	free
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #76]
	lsl	w9, w9, #1
	ldr	s0, [x8, w9, sxtw #2]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #76]
	lsl	w9, w9, #1
	add	w9, w9, #1
	ldr	s1, [x8, w9, sxtw #2]
	fcmp	s0, s1
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	bbox_comparator, .Lfunc_end0-bbox_comparator
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
	.addrsig_sym free_image
	.addrsig_sym free
	.addrsig_sym total_compares