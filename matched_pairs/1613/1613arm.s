	.text
	.p2align	2                               // -- Begin function range_l
	.type	range_l,@function
range_l:                                // @range_l
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	lua_gettop
	stur	w0, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	newcharset
	str	x0, [sp, #24]
	mov	w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.gt	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	add	x2, sp, #8
	bl	luaL_checklstring
	str	x0, [sp]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #2
	cset	w8, eq
	and	w1, w8, #0x1
	ldur	w2, [x29, #-12]
	adrp	x3, .L.str
	add	x3, x3, :lo12:.L.str
	bl	luaL_argcheck
	ldr	x8, [sp]
	ldrb	w8, [x8]
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldr	x9, [sp]
	ldrb	w9, [x9, #1]
	subs	w8, w8, w9
	b.gt	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #24]
	ldr	w0, [x8, #4]
	ldr	w1, [sp, #20]
	bl	setchar
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_8:
	ldr	x0, [sp, #24]
	bl	correctset
	mov	w0, #1
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	range_l, .Lfunc_end0-range_l
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"range must have two characters"
	.size	.L.str, 31
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym range_l
	.addrsig_sym lua_gettop
	.addrsig_sym newcharset
	.addrsig_sym luaL_checklstring
	.addrsig_sym luaL_argcheck
	.addrsig_sym setchar
	.addrsig_sym correctset