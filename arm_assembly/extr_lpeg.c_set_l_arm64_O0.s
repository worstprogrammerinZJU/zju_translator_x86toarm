	.text
	.p2align	2                               // -- Begin function set_l
	.type	set_l,@function
set_l:                                  // @set_l
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	add	x2, sp, #16
	bl	luaL_checklstring
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	mov	w1, #1
	mov	x2, xzr
	bl	getpatt
	b	.LBB0_6
.LBB0_2:
	ldur	x0, [x29, #-8]
	bl	newcharset
	str	x0, [sp]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x9, x8, #1
	str	x9, [sp, #16]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp]
	ldr	w0, [x8, #4]
	ldr	x8, [sp, #8]
	ldrb	w1, [x8]
	bl	setchar
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_5:
	ldr	x0, [sp]
	bl	correctset
	b	.LBB0_6
.LBB0_6:
	mov	w0, #1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_l, .Lfunc_end0-set_l
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_l
	.addrsig_sym luaL_checklstring
	.addrsig_sym getpatt
	.addrsig_sym newcharset
	.addrsig_sym setchar
	.addrsig_sym correctset