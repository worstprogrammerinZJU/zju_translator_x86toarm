	.text
	.p2align	2                               // -- Begin function i2b
	.type	i2b,@function
i2b:                                    // @i2b
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	Balloc
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	x0, [sp, #8]
	ldur	w9, [x29, #-12]
	ldr	x10, [sp, #8]
	ldr	x10, [x10]
	str	w9, [x10]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	i2b, .Lfunc_end0-i2b
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym i2b
	.addrsig_sym Balloc