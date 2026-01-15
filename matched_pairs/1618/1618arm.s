	.text
	.p2align	2                               // -- Begin function rotate
	.type	rotate,@function
rotate:                                 // @rotate
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	x0, [sp, #8]
	ldr	w8, [sp]
	subs	w1, w8, #1
	bl	invert
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	add	x0, x8, x9, lsl #2
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w1, w8, w9
	bl	invert
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	invert
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	rotate, .Lfunc_end0-rotate
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rotate
	.addrsig_sym invert