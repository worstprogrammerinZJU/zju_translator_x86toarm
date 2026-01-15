	.text
	.globl	parse_l2norm                    // -- Begin function parse_l2norm
	.p2align	2
	.type	parse_l2norm,@function
parse_l2norm:                           // @parse_l2norm
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	ldr	w0, [x1, #16]
	ldr	w1, [x1, #12]
	bl	make_l2norm_layer
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x1, #8]
	str	w8, [x9, #16]
	str	w8, [x9, #20]
	ldr	w8, [x1, #4]
	str	w8, [x9, #8]
	str	w8, [x9, #12]
	ldr	w8, [x1]
	str	w8, [x9]
	str	w8, [x9, #4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	parse_l2norm, .Lfunc_end0-parse_l2norm
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_l2norm_layer