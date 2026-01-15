	.text
	.p2align	2                               // -- Begin function jointable
	.type	jointable,@function
jointable:                              // @jointable
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	lua_getfenv
	ldur	x0, [x29, #-16]
	mov	w1, #-1
	bl	lua_objlen
	str	w0, [sp, #20]
	ldur	x0, [x29, #-16]
	mov	w1, #-2
	bl	lua_getfenv
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	mov	w1, #-2
	mov	w2, #-1
	bl	lua_equal
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	lua_pop
	stur	wzr, [x29, #-4]
	b	.LBB0_14
.LBB0_3:
	ldur	x0, [x29, #-16]
	mov	w1, #-1
	bl	lua_objlen
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	lua_pop
	ldur	x0, [x29, #-16]
	mov	w1, #-2
	bl	lua_setfenv
	stur	wzr, [x29, #-4]
	b	.LBB0_14
.LBB0_5:
	ldur	x0, [x29, #-16]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #20]
	add	w1, w8, w9
	mov	w2, wzr
	bl	lua_createtable
	mov	w8, #1
	str	w8, [sp, #16]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.gt	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x0, [x29, #-16]
	ldr	w2, [sp, #16]
	mov	w1, #-2
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	lua_rawgeti
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldr	w2, [sp, #16]
	bl	lua_rawseti
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_6
.LBB0_9:
	mov	w8, #1
	str	w8, [sp, #16]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.gt	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x0, [x29, #-16]
	ldr	w2, [sp, #16]
	mov	w1, #-3
	bl	lua_rawgeti
	ldur	x0, [x29, #-16]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #16]
	add	w2, w8, w9
	mov	w1, #-2
	bl	lua_rawseti
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_10
.LBB0_13:
	ldur	x0, [x29, #-16]
	mov	w1, #-4
	bl	lua_setfenv
	ldur	x0, [x29, #-16]
	mov	w1, #2
	bl	lua_pop
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jointable, .Lfunc_end0-jointable
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jointable
	.addrsig_sym lua_getfenv
	.addrsig_sym lua_objlen
	.addrsig_sym lua_equal
	.addrsig_sym lua_pop
	.addrsig_sym lua_setfenv
	.addrsig_sym lua_createtable
	.addrsig_sym lua_rawgeti
	.addrsig_sym lua_rawseti