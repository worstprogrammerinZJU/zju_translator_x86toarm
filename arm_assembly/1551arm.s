	.text
	.p2align	2                               // -- Begin function addpatt
	.type	addpatt,@function
addpatt:                                // @addpatt
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	lua_touserdata
	str	x0, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	pattsize
	str	w0, [sp, #12]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	bl	jointable
	str	w0, [sp, #8]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	w8, [sp, #12]
	add	w2, w8, #1
	bl	copypatt
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_9
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldur	x9, [x29, #-16]
	ldrsw	x10, [sp, #12]
	add	x9, x9, x10, lsl #3
	subs	x8, x8, x9
	b.hs	.LBB0_8
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x0, [sp]
	bl	isfenvoff
	cbz	x0, .LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=1
	ldrsw	x10, [sp, #8]
	ldr	x9, [sp]
	ldr	x8, [x9]
	add	x8, x8, x10
	str	x8, [x9]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x0, [sp]
	bl	sizei
	ldr	x8, [sp]
	add	x8, x8, w0, sxtw #3
	str	x8, [sp]
	b	.LBB0_2
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	addpatt, .Lfunc_end0-addpatt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym addpatt
	.addrsig_sym lua_touserdata
	.addrsig_sym pattsize
	.addrsig_sym jointable
	.addrsig_sym copypatt
	.addrsig_sym isfenvoff
	.addrsig_sym sizei