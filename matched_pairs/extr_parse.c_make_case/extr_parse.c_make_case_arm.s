	.text
	.p2align	2                               // -- Begin function make_case
	.type	make_case,@function
make_case:                              // @make_case
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	str	x2, [sp, #16]
	mov	w0, #16
	bl	malloc
	str	x0, [sp, #8]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_case, .Lfunc_end0-make_case
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_case
	.addrsig_sym malloc