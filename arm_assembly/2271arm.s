	.text
	.p2align	2                               // -- Begin function stbi__pnm_test
	.type	stbi__pnm_test,@function
stbi__pnm_test:                         // @stbi__pnm_test
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	stbi__get8
	mov	w8, w0
	strb	w8, [sp, #15]
	ldr	x0, [sp, #16]
	bl	stbi__get8
	mov	w8, w0
	strb	w8, [sp, #14]
	ldrb	w8, [sp, #15]
	subs	w8, w8, #80
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldrb	w8, [sp, #14]
	subs	w8, w8, #53
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldrb	w8, [sp, #14]
	subs	w8, w8, #54
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__pnm_test, .Lfunc_end0-stbi__pnm_test
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_test
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__rewind