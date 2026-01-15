	.text
	.p2align	2                               // -- Begin function unnamed
	.type	unnamed,@function
unnamed:                                // @unnamed
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #1
	str	w0, [sp, #8]
	mov	w8, #7
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	str	w8, [sp, #12]
	ldrb	w1, [sp, #8]
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldrb	w1, [sp, #12]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	unnamed, .Lfunc_end0-unnamed
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unnamed
	.addrsig_sym expect