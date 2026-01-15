	.text
	.p2align	2                               // -- Begin function optionalheadfail
	.type	optionalheadfail,@function
optionalheadfail:                       // @optionalheadfail
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	mul	w1, w8, w9
	bl	newpatt
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	w2, #1
	bl	addpatt
	ldr	x8, [sp, #16]
	add	x8, x8, w0, sxtw #2
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldursw	x10, [x29, #-12]
	mov	x9, xzr
	subs	x9, x9, x10
	add	x0, x8, x9, lsl #2
	ldur	w8, [x29, #-16]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	ldur	w9, [x29, #-12]
	mul	w1, w8, w9
	bl	check2test
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	optionalheadfail, .Lfunc_end0-optionalheadfail
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optionalheadfail
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym check2test