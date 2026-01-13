	.text
	.p2align	2                               // -- Begin function stbi__paeth
	.type	stbi__paeth,@function
stbi__paeth:                            // @stbi__paeth
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-8]
	subs	w0, w8, w9
	bl	abs
	str	w0, [sp, #8]
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w0, w8, w9
	bl	abs
	str	w0, [sp, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	subs	w0, w8, w9
	bl	abs
	str	w0, [sp]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_3:
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.gt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_5:
	ldr	w8, [sp, #16]
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__paeth, .Lfunc_end0-stbi__paeth
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__paeth
	.addrsig_sym abs