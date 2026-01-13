	.text
	.p2align	2                               // -- Begin function set
	.type	set,@function
set:                                    // @set
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldr	x10, [sp, #16]
	str	x8, [x9, x10, lsl #3]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	blr	x8
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set, .Lfunc_end0-set
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set