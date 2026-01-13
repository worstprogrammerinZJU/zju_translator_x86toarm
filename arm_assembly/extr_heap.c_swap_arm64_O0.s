	.text
	.p2align	2                               // -- Begin function swap
	.type	swap,@function
swap:                                   // @swap
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x2, [x8, x9, lsl #3]
	bl	set
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	set
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	swap, .Lfunc_end0-swap
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swap
	.addrsig_sym set