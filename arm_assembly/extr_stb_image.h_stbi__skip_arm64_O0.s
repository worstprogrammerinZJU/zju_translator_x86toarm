	.text
	.p2align	2                               // -- Begin function stbi__skip
	.type	stbi__skip,@function
stbi__skip:                             // @stbi__skip
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_7
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	w0, [x9, #8]
	ldr	w9, [sp, #4]
	ldr	w10, [sp]
	subs	w1, w9, w10
	blr	x8
	b	.LBB0_7
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldrsw	x10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	add	x8, x8, x10
	str	x8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__skip, .Lfunc_end0-stbi__skip
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__skip