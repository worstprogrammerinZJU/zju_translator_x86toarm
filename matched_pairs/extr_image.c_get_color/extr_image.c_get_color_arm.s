	.text
	.globl	get_color                       // -- Begin function get_color
	.p2align	2
	.type	get_color,@function
get_color:                              // @get_color
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	ldur	s0, [x29, #-8]
	scvtf	s0, s0
	ldur	s1, [x29, #-12]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	fmov	s1, #5.00000000
	fmul	s0, s0, s1
	str	s0, [sp, #16]
	ldr	s0, [sp, #16]
	bl	floor
	str	w0, [sp, #12]
	ldr	s0, [sp, #16]
	bl	ceil
	str	w0, [sp, #8]
	ldr	s0, [sp, #12]
	scvtf	s1, s0
	ldr	s0, [sp, #16]
	fsub	s0, s0, s1
	str	s0, [sp, #16]
	ldr	s1, [sp, #16]
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	adrp	x8, colors
	ldr	x9, [x8, :lo12:colors]
	ldrsw	x10, [sp, #12]
	ldr	x9, [x9, x10, lsl #3]
	ldursw	x10, [x29, #-4]
	ldr	s1, [x9, x10, lsl #2]
	scvtf	s1, s1
	ldr	s2, [sp, #16]
	ldr	x8, [x8, :lo12:colors]
	ldrsw	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-4]
	ldr	s3, [x8, x9, lsl #2]
	scvtf	s3, s3
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #4]
	ldr	s0, [sp, #4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_color, .Lfunc_end0-get_color
                                        // -- End function
	.type	colors,@object                  // @colors
	.bss
	.globl	colors
	.p2align	3
colors:
	.xword	0
	.size	colors, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym floor
	.addrsig_sym ceil
	.addrsig_sym colors