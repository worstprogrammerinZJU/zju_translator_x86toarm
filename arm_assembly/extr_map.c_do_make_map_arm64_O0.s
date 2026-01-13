	.text
	.p2align	2                               // -- Begin function do_make_map
	.type	do_make_map,@function
do_make_map:                            // @do_make_map
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	mov	w0, #48
	bl	malloc
	str	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #40]
	ldur	w0, [x29, #-12]
	mov	w1, #8
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x0, [x8, #32]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #24]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	do_make_map, .Lfunc_end0-do_make_map
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_map
	.addrsig_sym malloc
	.addrsig_sym calloc