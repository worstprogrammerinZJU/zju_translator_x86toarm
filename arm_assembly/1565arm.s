	.text
	.p2align	2                               // -- Begin function concat_l
	.type	concat_l,@function
concat_l:                               // @concat_l
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	sub	x2, x29, #12
	bl	getpatt
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	mov	w1, #2
	sub	x2, x29, #16
	bl	getpatt
	str	x0, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	isany
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #32]
	bl	isany
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldr	x9, [sp, #32]
	ldr	x9, [x9]
	add	x1, x8, x9
	mov	w2, wzr
	mov	x3, xzr
	bl	any
	b	.LBB0_4
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	add	w1, w8, w9
	bl	newpatt
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	mov	w2, #1
	bl	addpatt
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #3
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	w2, #2
	bl	addpatt
	ldr	x0, [sp, #24]
	bl	optimizecaptures
	b	.LBB0_4
.LBB0_4:
	mov	w0, #1
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	concat_l, .Lfunc_end0-concat_l
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym concat_l
	.addrsig_sym getpatt
	.addrsig_sym isany
	.addrsig_sym any
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym optimizecaptures