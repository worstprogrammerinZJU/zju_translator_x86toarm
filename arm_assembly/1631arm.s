	.text
	.p2align	2                               // -- Begin function tablecap
	.type	tablecap,@function
tablecap:                               // @tablecap
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	lua_newtable
	ldr	x9, [sp, #16]
	ldr	w0, [x9]
	add	w8, w0, #1
	str	w8, [x9]
	bl	isfullcap
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_5 Depth 2
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	isclosecap
	cbnz	w0, .LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #16]
	bl	pushcapture
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	b.le	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	ldr	w8, [sp, #8]
	add	w9, w8, #1
	mov	w8, wzr
	subs	w1, w8, w9
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w2, w8, w9
	bl	lua_rawseti
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #12]
	add	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_9:
	ldr	x10, [sp, #16]
	ldr	w9, [x10]
	mov	w8, #1
	add	w9, w9, #1
	str	w9, [x10]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	tablecap, .Lfunc_end0-tablecap
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tablecap
	.addrsig_sym lua_newtable
	.addrsig_sym isfullcap
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym lua_rawseti