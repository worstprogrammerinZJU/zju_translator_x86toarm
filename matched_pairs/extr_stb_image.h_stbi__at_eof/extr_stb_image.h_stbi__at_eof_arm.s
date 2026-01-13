	.text
	.p2align	2                               // -- Begin function stbi__at_eof
	.type	stbi__at_eof,@function
stbi__at_eof:                           // @stbi__at_eof
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8, #32]
	ldr	x9, [sp]
	ldr	w0, [x9, #24]
	blr	x8
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_3:
	ldr	x8, [sp]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	ldr	x9, [sp]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, ge
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__at_eof, .Lfunc_end0-stbi__at_eof
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__at_eof