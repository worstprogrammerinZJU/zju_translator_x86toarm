	.text
	.p2align	2                               // -- Begin function stbi__getn
	.type	stbi__getn,@function
stbi__getn:                             // @stbi__getn
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	ldr	w2, [sp, #16]
	bl	memcpy
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-16]
	ldr	w0, [x9, #16]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	add	x1, x9, x10
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #16]
	subs	w2, w9, w10
	blr	x8
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #16]
	subs	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.gt	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	ldr	w2, [sp, #20]
	bl	memcpy
	ldrsw	x10, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #8]
	add	x8, x8, x10
	str	x8, [x9, #8]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__getn, .Lfunc_end0-stbi__getn
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__getn
	.addrsig_sym memcpy